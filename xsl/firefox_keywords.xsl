<?xml version="1.0" ?>

<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<xsl:output
method="text"
encoding="Windows-1252"
omit-xml-declaration="yes"
standalone="yes"
/> 

<xsl:param name="publiconly" />

<!-- the database file lives at somewhere like
%appdata%\Mozilla\Firefox\Profiles\dq3d10hg.Default User\places.sqlite

-->

<xsl:template match="/">
<!-- this creates a folder for the search shortcuts if one does not already exist -->
insert or replace into moz_bookmarks (id,type,parent,title) values ((Select id from moz_bookmarks where type=2 and title='search shortcuts'), 2, 2,'search shortcuts');
<xsl:apply-templates />
</xsl:template>

<xsl:template match="search[not(@firefox='0')]"><xsl:if test="not(@public='0') or not($publiconly='1')">insert or replace into moz_places (id,url) values ( (SELECT id FROM moz_places WHERE url = "<xsl:value-of select="@url" />"),"<xsl:value-of select="@url" />");
insert or replace into moz_keywords (id,keyword, place_id) values ( (SELECT id FROM moz_keywords WHERE keyword = "<xsl:value-of select="@keyword" />"),"<xsl:value-of select="@keyword" />",(SELECT id FROM moz_places WHERE url = "<xsl:value-of select="@url" />"));
insert or replace into moz_bookmarks (id,type,fk,parent,title,keyword_id) values ((SELECT id FROM moz_bookmarks WHERE title = "<xsl:value-of select="@title" />"),1,(SELECT id FROM moz_places WHERE url = "<xsl:value-of select="@url" />"), (select id from moz_bookmarks where type=2 and title="search shortcuts"),"<xsl:value-of select="@title" />",(SELECT id FROM moz_keywords WHERE keyword = "<xsl:value-of select="@keyword" />"));
</xsl:if></xsl:template>
	
</xsl:stylesheet>

<?xml version="1.0" encoding="UTF-8"?> 

<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
	
<xsl:param name="publiconly" />
	
	<!-- svg as default and named to handle import of prefixed svg from the office "deskml" files -->
  <xsl:template match="/" >
  	<html>
  		<head>
  			<title>Search keyword list</title>	
			<script src="sorttable.js"></script>
			<script type="text/javascript" src="/js/jquery-1.10.1.min.js"></script>
			<script type="text/javascript" src="/js/jquery.dataTables.min.js"></script>
			<style type="text/css" title="currentStyle">	@import "css/datatable.css";</style> 
			<style type="text/css" title="currentStyle">	
					.dataTables_filter {
						width: 50%;
						float: left;
						text-align: left;
					}
			</style> 			
			
			<script language="javascript"> 
				$(document).ready(function() {
					$('#table').dataTable( {	"bPaginate": false,	"bLengthChange": false,	"bFilter": true,"bSort": true,	"bInfo": true,"bAutoWidth": false			} );
				} );
			</script>
  		</head>
  		<body>	
			    <table id="table" class="display" border="1" cellpadding="3" cellspacing="0" >
				<thead>
				<tr>
					<th>Keyword</th>
					<th>Page</th>
					<th>URL (search terms are substituted in place of %s)</th>
					<th>Notes</th>
				</tr>
				</thead>
				<tbody>
					<xsl:apply-templates />
				</tbody>
		</table>
		</body>
	</html>
  </xsl:template>	


	<xsl:template match="search"> 
		<xsl:if test="not(@public='0') or not($publiconly='1')">
					<tr>
						<td><xsl:value-of select="@keyword"/></td>
						<td><xsl:value-of select="@title"/></td>
						<td><xsl:value-of select="@url"/></td>
						<td>
							<xsl:if test="@chrome='0'">Not Chrome |</xsl:if>
							<xsl:if test="@firefox='0'">Not Firefox |</xsl:if>
							<xsl:if test="@ie='0'">Not Internet explorer|</xsl:if>
							<xsl:if test="@public='0'">Internal only</xsl:if>
						</td>
					</tr>
		</xsl:if>
	</xsl:template>		

</xsl:stylesheet>
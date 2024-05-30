<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:dpconfig="http://www.datapower.com/param/config" xmlns:dp="http://www.datapower.com/extensions" xmlns:str="http://exslt.org/strings" extension-element-prefixes="dp str" exclude-result-prefixes="dp str">
	<!--
    	***********************************************************************************************************************************
		*                                                   Copyright Bank of Montreal 2019.
    	* Stylesheet Name: CreateErrorResponse.xsl
    	* Created on: 05-10-2019
    	* Created by: Wei Liu
		* Description: Creates Error Response
    	***********************************************************************************************************************************
		*											Change History
    	***********************************************************************************************************************************
		*Modified By			Date		Description
    	***********************************************************************************************************************************
		*Wei Liu				04-25-2019	Initial Version
		*Dilip Kumar Rath		05-03-2019	Fixed XPATH mapping to match URI correctly
    	***********************************************************************************************************************************
    -->
	<xsl:template match="/">
		<xsl:variable name="uri" select="dp:variable('var://service/URI')"/>
		<xsl:variable name="serviceName" select="translate(string(str:tokenize(normalize-space($uri), '/')[position()=4]), 'abcdefghijklmnopqrstuvwxyz', 'ABCDEFGHIJKLMNOPQRSTUVWXYZ')"/>
		<!--David C add -->
		<xsl:variable name="levelB" select="translate(string(str:tokenize(normalize-space($uri), '/')[position()=5]), 'abcdefghijklmnopqrstuvwxyz', 'ABCDEFGHIJKLMNOPQRSTUVWXYZ')"/>
		<xsl:message dp:priority="debug">[AWSEndpointForward.xsl] levelB: <xsl:value-of select="$levelB"/>
		</xsl:message>
		<!--david c end-->

		<xsl:variable name="dpserviceName" select="dp:variable( 'var://service/processor-name' )"/>

		<!--David C update -->
		<xsl:variable name="fileName" select="concat('local:///mpg/AWSProxyMPG/', $dpserviceName, '/config/', $serviceName, '/', $levelB, '/', $serviceName, '_', $levelB, '.cfg')"/>
		<xsl:variable name="configFile">
			<xsl:choose>
				<xsl:when test="document($fileName)">
					<xsl:value-of select="$fileName" />
				</xsl:when>
				<xsl:otherwise>
					<xsl:value-of select="concat('local:///mpg/AWSProxyMPG/', $dpserviceName, '/config/', $serviceName, '/', $serviceName, '.cfg')" />
				</xsl:otherwise>
			</xsl:choose>
		</xsl:variable>
		<!--David C end -->
		<xsl:variable name="AWS" select="document($configFile)/AWS"/>
		<xsl:variable name="suffixURI" select="substring-after($uri, $AWS/@prefixURL)"/>
		<xsl:variable name="endpoint" select="$AWS/endpoint[uri[starts-with($suffixURI, text())]]"/>
		<xsl:message dp:priority="debug">[AWSEndpointForward.xsl] uri: <xsl:copy-of select="$uri"/>
		</xsl:message>
		<xsl:message dp:priority="debug">[AWSEndpointForward.xsl] suffixURI: <xsl:copy-of select="$suffixURI"/>
		</xsl:message>
		<xsl:message dp:priority="debug">[AWSEndpointForward.xsl] endpoint: <xsl:copy-of select="$endpoint"/>
		</xsl:message>
		<xsl:if test="count($endpoint)=0">
			<dp:reject>Bad request URI</dp:reject>
		</xsl:if>
		
		<xsl:variable name="finalURI">
			<xsl:choose>
				<xsl:when test="$AWS/@stage and $AWS/@stage != ''">
					<xsl:value-of select="concat('/', $AWS/@stage, $suffixURI)"/>
				</xsl:when>
				<xsl:otherwise>
					<xsl:value-of select="$suffixURI"/>
				</xsl:otherwise>
			</xsl:choose>
		</xsl:variable>
		<xsl:message dp:priority="debug">[AWSEndpointForward.xsl] finalURI: <xsl:value-of select="$finalURI"/>
		</xsl:message>
		<dp:set-variable name="'var://service/URI'" value="$finalURI"/>
		<dp:set-http-request-header name="'host'" value="$endpoint/@host"/>
		<dp:set-http-request-header name="'x-api-key'" value="$endpoint/@key"/>
	</xsl:template>
</xsl:stylesheet>

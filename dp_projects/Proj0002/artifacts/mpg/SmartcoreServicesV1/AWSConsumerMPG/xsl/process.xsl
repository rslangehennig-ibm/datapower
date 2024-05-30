<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:dpconfig="http://www.datapower.com/param/config" xmlns:dp="http://www.datapower.com/extensions" xmlns:str="http://exslt.org/strings" extension-element-prefixes="dp str" exclude-result-prefixes="dp str">
	<xsl:template match="/">
		<xsl:variable name="serviceInfo" select="dp:variable('var://context/transaction/serviceinfo')"/>
		<xsl:variable name="inURI" select="dp:variable('var://service/URI')"/>
		<xsl:message dp:priority="debug">
                ******inURI <xsl:value-of select="$inURI"/>
		</xsl:message>
		<xsl:variable name="dpuri" select="$serviceInfo/Service/@uri"/>
		<xsl:message dp:priority="debug">
                ******dpuri <xsl:value-of select="$dpuri"/>
		</xsl:message>
		<!-- <xsl:variable name="URIToPropogate" select="substring-after($inURI, string(str:tokenize (normalize-space($inURI), '/')[position()=3]))"/> /-->
		<xsl:variable name="URIToPropogate" select="substring-after($inURI, $dpuri)"/>
		<xsl:message dp:priority="debug">
                ******URIToPropogate <xsl:value-of select="$URIToPropogate"/>
		</xsl:message>
		<xsl:variable name="port" select="$serviceInfo/Service/Backendinfo/@port"/>
		<xsl:variable name="host" select="$serviceInfo/Service/Backendinfo/@host"/>
		<xsl:variable name="uri" select="$serviceInfo/Service/Backendinfo/@uri"/>
		<xsl:message dp:priority="debug">
                ******uri<xsl:value-of select="$uri"/>
		</xsl:message>
		<xsl:variable name="timeout" select="$serviceInfo/Service/Backendinfo/@timeout"/>
		<xsl:variable name="ssltype" select="$serviceInfo/Service/Backendinfo/SSLProfile/@ssltype"/>
		<xsl:variable name="sslname" select="$serviceInfo/Service/Backendinfo/SSLProfile/@name"/>
		<xsl:choose>
			<xsl:when test="string-length($URIToPropogate) = 0">
				<xsl:if test="not($inURI = $dpuri)">
					<dp:reject>Invalid incoming URI</dp:reject>
				</xsl:if>
			</xsl:when>
			<xsl:otherwise>
				<xsl:if test="not(substring-before($inURI, $URIToPropogate) = $dpuri)">
					<dp:reject>Invalid incoming URI</dp:reject>
				</xsl:if>
			</xsl:otherwise>
		</xsl:choose>
		<xsl:if test="string-length($dpuri) = 0">
			<dp:reject>DP-RESP-003 - DP URI missing in config</dp:reject>
		</xsl:if>
		<xsl:if test="string-length($port) = 0">
			<dp:reject>DP-RESP-004 - Routing PORT missing in config</dp:reject>
		</xsl:if>
		<xsl:if test="string-length($host) = 0">
			<dp:reject>DP-RESP-005 - Routing HOST missing in config</dp:reject>
		</xsl:if>
		<xsl:if test="string-length($uri) = 0">
			<dp:reject>DP-RESP-006 - Routing URI missing in config</dp:reject>
		</xsl:if>
		<xsl:if test="string-length($timeout) = 0">
			<dp:reject>DP-RESP-007 - Backend Timeout missing in config</dp:reject>
		</xsl:if>
		<xsl:if test="$serviceInfo/Service/Backendinfo/SSLProfile">
			<xsl:if test="string-length($ssltype) = 0">
				<dp:reject>DP-RESP-008 - Backend SSL Profile Type missing in config</dp:reject>
			</xsl:if>
			<xsl:if test="string-length($sslname) = 0">
				<dp:reject>DP-RESP-009 - Backend SSL Profile Name missing in config</dp:reject>
			</xsl:if>
		</xsl:if>
		<xsl:message dp:priority="info" dp:type="mpgw">
		[process.xsl] service port: <xsl:value-of select="$port"/> 
		              Inbound URI: <xsl:value-of select="dp:variable('var://service/URI')"/> 
					  DP URI: <xsl:value-of select="$dpuri"/>   
					  service URI: <xsl:value-of select="$uri"/>   
					  backend host: <xsl:value-of select="$host"/>   
					  DP URI: <xsl:value-of select="$dpuri"/>   
					  timeout: <xsl:value-of select="$timeout"/>   
					  ssltype: <xsl:value-of select="$ssltype"/>   
					  sslname: <xsl:value-of select="$sslname"/>   
					  URIToPropogate: <xsl:value-of select="$URIToPropogate"/>   
					  striped URI: <xsl:value-of select="substring-before($inURI, $URIToPropogate)"/>
		</xsl:message>
		<xsl:variable name="furi">
		<xsl:choose>
			<xsl:when test="$uri = '/' and string-length($URIToPropogate) &gt; 0">
				<xsl:value-of select="''"/>
			</xsl:when>
			<xsl:otherwise><xsl:value-of select="$uri"/>
			</xsl:otherwise>
		</xsl:choose>
		</xsl:variable>
		<xsl:choose>
			<xsl:when test="string-length($sslname)>0 and $ssltype='SSLProxyProfile'">
				<xsl:variable name="url" select="concat('https://',$host, ':', $port, $furi, $URIToPropogate)"/>
				<dp:set-variable name="'var://service/routing-url'" value="$url"/>
				<dp:set-variable name="'var://service/mpgw/backend-timeout'" value="$timeout"/>
				<dp:set-variable name="'var://service/routing-url-sslprofile'" value="$sslname"/>
			</xsl:when>
			<xsl:when test="string-length($sslname)>0 and $ssltype='SSLClientProfile'">
				<xsl:variable name="url" select="concat('https://',$host, ':', $port, $furi, $URIToPropogate)"/>
				<dp:set-variable name="'var://service/routing-url'" value="$url"/>
				<dp:set-variable name="'var://service/mpgw/backend-timeout'" value="$timeout"/>
				<dp:set-variable name="'var://service/routing-url-sslprofile'" value="concat('client:',$sslname)"/>
			</xsl:when>
			<xsl:otherwise>
				<xsl:variable name="url" select="concat('http://',$host, ':', $port, $furi, $URIToPropogate)"/>
				<dp:set-variable name="'var://service/routing-url'" value="$url"/>
				<dp:set-variable name="'var://service/mpgw/backend-timeout'" value="$timeout"/>
			</xsl:otherwise>
		</xsl:choose>
	</xsl:template>
</xsl:stylesheet>

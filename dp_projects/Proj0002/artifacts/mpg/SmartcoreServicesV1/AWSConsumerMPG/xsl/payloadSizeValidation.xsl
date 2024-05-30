<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0" xmlns:soap="http://schemas.xmlsoap.org/soap/envelope/" xmlns:dp="http://www.datapower.com/extensions" xmlns:str="http://exslt.org/strings" extension-element-prefixes="dp" exclude-result-prefixes="dp str">
	<xsl:template match="/">
		<xsl:variable name="requestSize" select="dp:variable( 'var://service/mpgw/request-size' )"/>
		<xsl:message dp:priority="debug">
            [payloadSizeValidation requestSize:] <xsl:value-of select="$requestSize"/>
		</xsl:message>
		<xsl:variable name="serviceInfo" select="dp:variable('var://context/transaction/serviceinfo')"/>
		<xsl:variable name="payloadsize">
			<xsl:value-of select="$serviceInfo/Service/Backendinfo/@payloadsize"/>
		</xsl:variable>
		<xsl:if test="string-length($payloadsize) = 0">
			<dp:reject>DP-RESP-002 - Allowed Payload size not set</dp:reject>
		</xsl:if>
		<xsl:variable name="size">
			<xsl:value-of select="$payloadsize * 1000"/>
		</xsl:variable>
		<xsl:message dp:priority="debug">
			[payloadSizeValidation sizelimit:] " <xsl:value-of select="$size"/>
		</xsl:message>
		<xsl:if test="$requestSize > $size">
			<dp:reject>Payload size exceeds Max allowed size: <xsl:value-of select="$size"/>
			</dp:reject>
		</xsl:if>
	</xsl:template>
</xsl:stylesheet>

<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:dp="http://www.datapower.com/extensions" extension-element-prefixes="dp">
	<xsl:template match="/">
        <xsl:variable name="messageType">
               <xsl:value-of select="dp:variable('var://context/transaction/message-type')"/>
        </xsl:variable>
        <xsl:variable name="contentType">
	       <xsl:value-of select="dp:variable('var://service/original-content-type')"/>
	</xsl:variable>
		<xsl:choose>
			<xsl:when test="$messageType = 'JSON' or contains($contentType, 'json')">
				<json/>
				<xsl:message dp:priority="debug">[chooseMessageType.xsl] json</xsl:message>
			</xsl:when>
			<xsl:otherwise>
				<xml/>
				<xsl:message dp:priority="debug">[chooseMessageType.xsl] xml</xsl:message>
			</xsl:otherwise>
		</xsl:choose>
	</xsl:template>
</xsl:stylesheet>

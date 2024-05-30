<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0" xmlns:soap="http://schemas.xmlsoap.org/soap/envelope/" xmlns:dp="http://www.datapower.com/extensions" xmlns:dpconfig="http://www.datapower.com/param/config" xmlns:xd="http://www.pnp-software.com/XSLTdoc" xmlns:str="http://exslt.org/strings" extension-element-prefixes="dp" exclude-result-prefixes="dp dpconfig xd str">
	<xd:doc type="string">
        Specifies the consumer configuration file that should be used to validate client OUID.
      </xd:doc>
	<xsl:param name="dpconfig:ClientOUID" select="'default-value'"/>
	<xsl:param name="dpconfig:TestOUID" select="'default-value'"/>
	<!--List the DP stylesheet parameters that will be used for this service as consumers /-->
	<xsl:template match="/">
		<!-- Retrieve the URI that is being requested -->
		<xsl:variable name="URI" select="dp:variable( 'var://service/URI' )"/>
		<xsl:message dp:priority="debug">
            [ClientIDValidation URI:] <xsl:value-of select="$URI"/>
		</xsl:message>
		<xsl:variable name="uritoken" select="str:tokenize ($URI, '/')"/>
		<xsl:variable name="category" select="translate($uritoken[position()=2], 'abcdefghijklmnopqrstuvwxyz', 'ABCDEFGHIJKLMNOPQRSTUVWXYZ')"/>
		<xsl:variable name="service" select="translate($uritoken[position()=3], 'abcdefghijklmnopqrstuvwxyz', 'ABCDEFGHIJKLMNOPQRSTUVWXYZ')"/>
		<xsl:message dp:priority="debug">
            [ClientIDValidation category:] <xsl:value-of select="$category"/>
		</xsl:message>
		<xsl:variable name="dpserviceName" select="dp:variable( 'var://service/processor-name' )"/>
		<xsl:variable name="serviceConfigPath" select="concat('local:///mpg/SmartcoreServicesV1/', $dpserviceName, '/', $category, '/', $service, '/SERVICE_', $service, '.xml')"/>
		<xsl:message dp:priority="debug">
            [ClientIDValidation service path:] <xsl:value-of select="$serviceConfigPath"/>
		</xsl:message>
		<xsl:variable name="serviceInfo">
			<xsl:copy-of select="document($serviceConfigPath)/Service"/>
		</xsl:variable>
		<xsl:message dp:priority="debug">
            [ClientIDValidation service info:] <xsl:copy-of select="$serviceInfo"/>
		</xsl:message>
		<xsl:variable name="consumerOUIDs">
			<xsl:copy-of select="$dpconfig:ClientOUID"/>
			<xsl:copy-of select="$dpconfig:TestOUID"/>
		</xsl:variable>
		<xsl:message dp:priority="debug">
            [ClientIDValidation consumerOUIDs:] <xsl:copy-of select="$consumerOUIDs"/>
		</xsl:message>
		<xsl:choose>
			<xsl:when test="not($consumerOUIDs)">
				<xsl:message dp:priority="error">
						*** No OUID configured for URI (<xsl:value-of select="$URI"/>) ***
				</xsl:message>
				<dp:reject>Invalid URI - No OUID configured for Client</dp:reject>
			</xsl:when>
			<xsl:when test="not(string($serviceInfo))">
				<xsl:message dp:priority="error">
						*** Service config file not found or missing service info (<xsl:value-of select="$serviceConfigPath"/>) for URI (<xsl:value-of select="$URI"/>) ***
				</xsl:message>
				<dp:reject>Invalid URI - Service Config file not found or missing service info</dp:reject>
			</xsl:when>
			<xsl:otherwise>
				<xsl:variable name="messagetype" select="$serviceInfo/Service/@messagetype"/>
				<xsl:message dp:priority="debug">
            		[ClientIDValidation messagetype:] <xsl:value-of select="$messagetype"/>
				</xsl:message>
				<xsl:if test="string-length($messagetype) = 0">
					<dp:reject>DP-RESP-001 - Msg Type not set</dp:reject>
				</xsl:if>
				<dp:set-variable name="'var://context/transaction/message-type'" value="$messagetype"/>
				<dp:set-variable name="'var://context/transaction/serviceinfo'" value="$serviceInfo"/>
				<xsl:message dp:priority="debug">
            		[ClientIDValidation context/message-type:] <xsl:value-of select="dp:variable('var://context/transaction/message-type')"/>
				</xsl:message>
				<!-- Retrieve the OUID associated with the connection -->
				<xsl:variable name="clientInfo">
					<xsl:value-of select="dp:auth-info('ssl-client-subject')"/>
				</xsl:variable>
				<xsl:message dp:priority="debug">
					[ClientIDValidation Client Subject:] " <xsl:value-of select="$clientInfo"/>
				</xsl:message>
				<xsl:for-each select="str:tokenize($clientInfo, '/')">
					<xsl:if test="string-length(dp:variable('var://context/transaction/clientOUID')) = 0">
						<xsl:variable name="TempItem">
							<xsl:value-of select="."/>
						</xsl:variable>
						<xsl:variable name="TempClientOUID">
							<xsl:if test="contains($TempItem, 'OU=')">
								<xsl:value-of select="$TempItem"/>
							</xsl:if>
						</xsl:variable>
						<xsl:variable name="ClientOUID">
							<xsl:for-each select="str:tokenize($TempClientOUID, '=')">
								<xsl:if test="position()=2">
									<xsl:value-of select="."/>
								</xsl:if>
							</xsl:for-each>
						</xsl:variable>
						<dp:set-variable name="'var://context/transaction/clientOUID'" value="$ClientOUID"/>
					</xsl:if>
				</xsl:for-each>
				<xsl:variable name="apos">'</xsl:variable>
				<xsl:variable name="clientOUID" select="dp:variable('var://context/transaction/clientOUID')"/>
				<xsl:choose>
					<xsl:when test="$clientOUID = $dpconfig:ClientOUID"/>
					<xsl:when test="$clientOUID = $dpconfig:TestOUID and $clientOUID != concat($apos,$apos)"/>					
					<xsl:otherwise>
						<dp:reject>Client authenticaton error - Request with invalid OUID: <xsl:value-of select="$clientOUID"/> - Expected OUIDs: <xsl:value-of select="$dpconfig:ClientOUID"/>
						</dp:reject>
					</xsl:otherwise>
				</xsl:choose>
			</xsl:otherwise>
		</xsl:choose>
	</xsl:template>
</xsl:stylesheet>

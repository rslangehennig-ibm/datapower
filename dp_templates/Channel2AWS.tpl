<datapower-configuration version="3"><export-details><description>Exported Configuration</description><user>twu04</user><domain>DIT-CGSG-SC-Services</domain><comment/><product-id>5725</product-id><product>IDG</product><display-product>IDG</display-product><model>IBM DataPower Gateway</model><display-model>IBM DataPower Gateway</display-model><device-name>ciambccudtdpw01</device-name><serial-number>0000000</serial-number><firmware-version>IDG.2018.4.1.3hy</firmware-version><display-firmware-version>IDG.2018.4.1.3hy</display-firmware-version><firmware-build>307450hy</firmware-build><delivery-type>LTS</delivery-type><firmware-timestamp>2019/03/23 13:30:08</firmware-timestamp><current-date>2020-04-23</current-date><current-time>09:18:12 EDT</current-time><reset-date>2020-03-31</reset-date><reset-time>18:23:56 EDT</reset-time><login-message/><custom-ui-file>local:///DP_Banner.xml</custom-ui-file></export-details><interface-data/><configuration domain="DIT-CGSG-SC-Services"><CryptoKey name="DataPowerBMOFGKey" xmlns:env="http://www.w3.org/2003/05/soap-envelope" xmlns:dp="http://www.datapower.com/schemas/management">
<mAdminState>enabled</mAdminState>
<Filename>sharedcert:///iambccdpdit.bmogc.net.pfx</Filename>
<Password>DITChannel2020</Password>
<PasswordAlias>off</PasswordAlias></CryptoKey><CryptoCertificate name="DataPowerBMOFGCert" xmlns:env="http://www.w3.org/2003/05/soap-envelope" xmlns:dp="http://www.datapower.com/schemas/management">
<mAdminState>enabled</mAdminState>
<Filename>sharedcert:///iambccdpdit.bmogc.net.pfx</Filename>
<Password>DITChannel2020</Password>
<PasswordAlias>off</PasswordAlias>
<IgnoreExpiration>off</IgnoreExpiration></CryptoCertificate><CryptoIdentCred name="DataPowerIDCredForChannel" xmlns:env="http://www.w3.org/2003/05/soap-envelope" xmlns:dp="http://www.datapower.com/schemas/management">
<mAdminState>enabled</mAdminState>
<Key class="CryptoKey">DataPowerBMOFGKey</Key>
<Certificate class="CryptoCertificate">DataPowerBMOFGCert</Certificate></CryptoIdentCred><CryptoCertificate name="BMOMSIntermediateCert" xmlns:env="http://www.w3.org/2003/05/soap-envelope" xmlns:dp="http://www.datapower.com/schemas/management">
<mAdminState>enabled</mAdminState>
<Filename>sharedcert:///MS_QA_issuing_CA1.cer</Filename>
<PasswordAlias>off</PasswordAlias>
<IgnoreExpiration>off</IgnoreExpiration></CryptoCertificate><CryptoCertificate name="testcert" xmlns:env="http://www.w3.org/2003/05/soap-envelope" xmlns:dp="http://www.datapower.com/schemas/management">
<mAdminState>enabled</mAdminState>
<Filename>sharedcert:///DP_Shakedown.cer</Filename>
<PasswordAlias>off</PasswordAlias>
<IgnoreExpiration>off</IgnoreExpiration></CryptoCertificate><CryptoValCred name="BMOMSSignerValCred" xmlns:env="http://www.w3.org/2003/05/soap-envelope" xmlns:dp="http://www.datapower.com/schemas/management">
<mAdminState>enabled</mAdminState>
<Certificate class="CryptoCertificate">BMOMSIntermediateCert</Certificate>
<Certificate class="CryptoCertificate">testcert</Certificate>
<CertValidationMode>legacy</CertValidationMode>
<UseCRL>on</UseCRL>
<RequireCRL>off</RequireCRL>
<CRLDPHandling>ignore</CRLDPHandling>
<InitialPolicySet>2.5.29.32.0</InitialPolicySet>
<ExplicitPolicy>off</ExplicitPolicy>
<CheckDates>on</CheckDates></CryptoValCred><SSLServerProfile name="ISAMServerProfile" xmlns:env="http://www.w3.org/2003/05/soap-envelope" xmlns:dp="http://www.datapower.com/schemas/management">
<mAdminState>enabled</mAdminState>
<UserSummary>Server profile for ISAM client</UserSummary>
<Protocols>
<SSLv3>off</SSLv3>
<TLSv1d0>off</TLSv1d0>
<TLSv1d1>off</TLSv1d1>
<TLSv1d2>on</TLSv1d2></Protocols>
<Ciphers>ECDHE_ECDSA_WITH_AES_256_GCM_SHA384</Ciphers>
<Ciphers>ECDHE_RSA_WITH_AES_256_GCM_SHA384</Ciphers>
<Ciphers>ECDHE_ECDSA_WITH_AES_256_CBC_SHA384</Ciphers>
<Ciphers>ECDHE_RSA_WITH_AES_256_CBC_SHA384</Ciphers>
<Ciphers>ECDHE_ECDSA_WITH_AES_256_CBC_SHA</Ciphers>
<Ciphers>ECDHE_RSA_WITH_AES_256_CBC_SHA</Ciphers>
<Ciphers>DHE_DSS_WITH_AES_256_GCM_SHA384</Ciphers>
<Ciphers>DHE_RSA_WITH_AES_256_GCM_SHA384</Ciphers>
<Ciphers>DHE_RSA_WITH_AES_256_CBC_SHA256</Ciphers>
<Ciphers>DHE_DSS_WITH_AES_256_CBC_SHA256</Ciphers>
<Ciphers>DHE_RSA_WITH_AES_256_CBC_SHA</Ciphers>
<Ciphers>DHE_DSS_WITH_AES_256_CBC_SHA</Ciphers>
<Ciphers>RSA_WITH_AES_256_GCM_SHA384</Ciphers>
<Ciphers>RSA_WITH_AES_256_CBC_SHA256</Ciphers>
<Ciphers>RSA_WITH_AES_256_CBC_SHA</Ciphers>
<Ciphers>ECDHE_ECDSA_WITH_AES_128_GCM_SHA256</Ciphers>
<Ciphers>ECDHE_RSA_WITH_AES_128_GCM_SHA256</Ciphers>
<Ciphers>ECDHE_ECDSA_WITH_AES_128_CBC_SHA256</Ciphers>
<Ciphers>ECDHE_RSA_WITH_AES_128_CBC_SHA256</Ciphers>
<Ciphers>ECDHE_ECDSA_WITH_AES_128_CBC_SHA</Ciphers>
<Ciphers>ECDHE_RSA_WITH_AES_128_CBC_SHA</Ciphers>
<Ciphers>DHE_DSS_WITH_AES_128_GCM_SHA256</Ciphers>
<Ciphers>DHE_RSA_WITH_AES_128_GCM_SHA256</Ciphers>
<Ciphers>DHE_RSA_WITH_AES_128_CBC_SHA256</Ciphers>
<Ciphers>DHE_DSS_WITH_AES_128_CBC_SHA256</Ciphers>
<Ciphers>DHE_RSA_WITH_AES_128_CBC_SHA</Ciphers>
<Ciphers>DHE_DSS_WITH_AES_128_CBC_SHA</Ciphers>
<Ciphers>RSA_WITH_AES_128_GCM_SHA256</Ciphers>
<Ciphers>RSA_WITH_AES_128_CBC_SHA256</Ciphers>
<Ciphers>RSA_WITH_AES_128_CBC_SHA</Ciphers>
<Ciphers>ECDHE_ECDSA_WITH_3DES_EDE_CBC_SHA</Ciphers>
<Ciphers>ECDHE_RSA_WITH_3DES_EDE_CBC_SHA</Ciphers>
<Ciphers>DHE_RSA_WITH_3DES_EDE_CBC_SHA</Ciphers>
<Ciphers>DHE_DSS_WITH_3DES_EDE_CBC_SHA</Ciphers>
<Ciphers>RSA_WITH_3DES_EDE_CBC_SHA</Ciphers>
<Idcred class="CryptoIdentCred">DataPowerIDCredForChannel</Idcred>
<RequestClientAuth>on</RequestClientAuth>
<RequireClientAuth>on</RequireClientAuth>
<ValidateClientCert>on</ValidateClientCert>
<SendClientAuthCAList>off</SendClientAuthCAList>
<Valcred class="CryptoValCred">BMOMSSignerValCred</Valcred>
<Caching>on</Caching>
<CacheTimeout>300</CacheTimeout>
<CacheSize>20</CacheSize>
<SSLOptions>
<max-duration>off</max-duration>
<max-renegotiation>off</max-renegotiation></SSLOptions>
<MaxSSLDuration>60</MaxSSLDuration>
<NumberOfRenegotiationAllowed>0</NumberOfRenegotiationAllowed>
<ProhibitResumeOnReneg>off</ProhibitResumeOnReneg>
<Compression>off</Compression>
<AllowLegacyRenegotiation>off</AllowLegacyRenegotiation>
<PreferServerCiphers>on</PreferServerCiphers>
<EllipticCurves>secp521r1</EllipticCurves>
<EllipticCurves>secp384r1</EllipticCurves>
<EllipticCurves>secp256k1</EllipticCurves>
<EllipticCurves>secp256r1</EllipticCurves></SSLServerProfile><HTTPSSourceProtocolHandler name="@@SERVICE_NAME@@MPGHttpsFSH" xmlns:env="http://www.w3.org/2003/05/soap-envelope" xmlns:dp="http://www.datapower.com/schemas/management">
<mAdminState>enabled</mAdminState>
<UserSummary>ISAM --> DP --> AWS</UserSummary>
<LocalAddress>Data-Env1</LocalAddress>
<LocalPort>8336</LocalPort>
<HTTPVersion>HTTP/1.1</HTTPVersion>
<AllowedFeatures>
<HTTP-1.0>on</HTTP-1.0>
<HTTP-1.1>on</HTTP-1.1>
<HTTP-2.0>off</HTTP-2.0>
<POST>on</POST>
<GET>on</GET>
<PUT>on</PUT>
<HEAD>on</HEAD>
<OPTIONS>on</OPTIONS>
<TRACE>on</TRACE>
<DELETE>on</DELETE>
<CONNECT>off</CONNECT>
<CustomMethods>on</CustomMethods>
<QueryString>on</QueryString>
<FragmentIdentifiers>on</FragmentIdentifiers>
<DotDot>off</DotDot>
<CmdExe>off</CmdExe></AllowedFeatures>
<PersistentConnections>on</PersistentConnections>
<MaxPersistentConnectionsReuse>0</MaxPersistentConnectionsReuse>
<AllowCompression>off</AllowCompression>
<AllowWebSocketUpgrade>off</AllowWebSocketUpgrade>
<WebSocketIdleTimeout>0</WebSocketIdleTimeout>
<MaxURLLen>16384</MaxURLLen>
<MaxTotalHdrLen>128000</MaxTotalHdrLen>
<MaxHdrCount>0</MaxHdrCount>
<MaxNameHdrLen>0</MaxNameHdrLen>
<MaxValueHdrLen>0</MaxValueHdrLen>
<MaxQueryStringLen>0</MaxQueryStringLen>
<CredentialCharset>protocol</CredentialCharset>
<SSLServerConfigType>server</SSLServerConfigType>
<SSLServer class="SSLServerProfile">ISAMServerProfile</SSLServer>
<HTTP2MaxStreams>100</HTTP2MaxStreams>
<HTTP2MaxFrameSize>16384</HTTP2MaxFrameSize>
<HTTP2StreamHeader>off</HTTP2StreamHeader>
<ChunkedEncoding>on</ChunkedEncoding></HTTPSSourceProtocolHandler><HTTPUserAgent name="default" intrinsic="true" xmlns:env="http://www.w3.org/2003/05/soap-envelope" xmlns:dp="http://www.datapower.com/schemas/management">
<mAdminState>enabled</mAdminState>
<UserSummary>Default User Agent</UserSummary>
<MaxRedirects>8</MaxRedirects>
<Timeout>300</Timeout></HTTPUserAgent><XMLManager name="default" intrinsic="true" xmlns:env="http://www.w3.org/2003/05/soap-envelope" xmlns:dp="http://www.datapower.com/schemas/management">
<mAdminState>enabled</mAdminState>
<UserSummary>Default XML-Manager</UserSummary>
<CacheSize>256</CacheSize>
<SHA1Caching>on</SHA1Caching>
<StaticDocumentCalls>on</StaticDocumentCalls>
<SearchResults>on</SearchResults>
<SupportTxWarn>off</SupportTxWarn>
<Memoization>on</Memoization>
<ParserLimitsBytesScanned>4194304</ParserLimitsBytesScanned>
<ParserLimitsElementDepth>512</ParserLimitsElementDepth>
<ParserLimitsAttributeCount>128</ParserLimitsAttributeCount>
<ParserLimitsMaxNodeSize>33554432</ParserLimitsMaxNodeSize>
<ParserLimitsForbidExternalReferences>on</ParserLimitsForbidExternalReferences>
<ParserLimitsExternalReferences>forbid</ParserLimitsExternalReferences>
<ParserLimitsMaxPrefixes>1024</ParserLimitsMaxPrefixes>
<ParserLimitsMaxNamespaces>1024</ParserLimitsMaxNamespaces>
<ParserLimitsMaxLocalNames>60000</ParserLimitsMaxLocalNames>
<DocCacheMaxDocs>5000</DocCacheMaxDocs>
<DocCacheSize>0</DocCacheSize>
<DocMaxWrites>32768</DocMaxWrites>
<UserAgent class="HTTPUserAgent">default</UserAgent></XMLManager><CryptoCertificate name="ThawteTlsRsaCAG1IntCert" xmlns:env="http://www.w3.org/2003/05/soap-envelope" xmlns:dp="http://www.datapower.com/schemas/management">
<mAdminState>enabled</mAdminState>
<Filename>sharedcert:///ThawteTLS_RSA_CA_G1.cer</Filename>
<PasswordAlias>off</PasswordAlias>
<IgnoreExpiration>off</IgnoreExpiration></CryptoCertificate><CryptoCertificate name="VeriSign-G4-intermediateCert" xmlns:env="http://www.w3.org/2003/05/soap-envelope" xmlns:dp="http://www.datapower.com/schemas/management">
<mAdminState>enabled</mAdminState>
<Filename>sharedcert:///Verisign-G4-intermediate.cer</Filename>
<PasswordAlias>off</PasswordAlias>
<IgnoreExpiration>off</IgnoreExpiration></CryptoCertificate><CryptoCertificate name="Verisign-G5-rootCert" xmlns:env="http://www.w3.org/2003/05/soap-envelope" xmlns:dp="http://www.datapower.com/schemas/management">
<mAdminState>enabled</mAdminState>
<Filename>sharedcert:///Verisign-G5-root.cer</Filename>
<PasswordAlias>off</PasswordAlias>
<IgnoreExpiration>off</IgnoreExpiration></CryptoCertificate><CryptoCertificate name="SymantecIntermediateCert" xmlns:env="http://www.w3.org/2003/05/soap-envelope" xmlns:dp="http://www.datapower.com/schemas/management">
<mAdminState>enabled</mAdminState>
<Filename>sharedcert:///Symantec_Class3_ Secure_Server_SHA256_SSL_CA.cer</Filename>
<PasswordAlias>off</PasswordAlias>
<IgnoreExpiration>off</IgnoreExpiration></CryptoCertificate><CryptoCertificate name="ThawteIntermediateCert" xmlns:env="http://www.w3.org/2003/05/soap-envelope" xmlns:dp="http://www.datapower.com/schemas/management">
<mAdminState>enabled</mAdminState>
<Filename>sharedcert:///Thawte_IntermediateCA.cer</Filename>
<PasswordAlias>off</PasswordAlias>
<IgnoreExpiration>off</IgnoreExpiration></CryptoCertificate><CryptoCertificate name="DigiCert_Global_CA_G2" xmlns:env="http://www.w3.org/2003/05/soap-envelope" xmlns:dp="http://www.datapower.com/schemas/management">
<mAdminState>enabled</mAdminState>
<Filename>sharedcert:///DigiCert_Global_CA_G2.cer</Filename>
<PasswordAlias>off</PasswordAlias>
<IgnoreExpiration>off</IgnoreExpiration></CryptoCertificate><CryptoCertificate name="DigiCert_Global_Root_G2" xmlns:env="http://www.w3.org/2003/05/soap-envelope" xmlns:dp="http://www.datapower.com/schemas/management">
<mAdminState>enabled</mAdminState>
<Filename>sharedcert:///BonRootCert.cer</Filename>
<PasswordAlias>off</PasswordAlias>
<IgnoreExpiration>off</IgnoreExpiration></CryptoCertificate><CryptoCertificate name="Comodo_RSA_Organization_IntermediateCert" xmlns:env="http://www.w3.org/2003/05/soap-envelope" xmlns:dp="http://www.datapower.com/schemas/management">
<mAdminState>enabled</mAdminState>
<Filename>sharedcert:///COMODO_RSA_Organization_VSS_CA.cer</Filename>
<PasswordAlias>off</PasswordAlias>
<IgnoreExpiration>off</IgnoreExpiration></CryptoCertificate><CryptoCertificate name="MSsignerSHA2cert" xmlns:env="http://www.w3.org/2003/05/soap-envelope" xmlns:dp="http://www.datapower.com/schemas/management">
<mAdminState>enabled</mAdminState>
<Filename>sharedcert:///MS_QA_issuing_CA1.cer</Filename>
<PasswordAlias>off</PasswordAlias>
<IgnoreExpiration>off</IgnoreExpiration></CryptoCertificate><CryptoCertificate name="ComodoRSACertificationAuthorityCert" xmlns:env="http://www.w3.org/2003/05/soap-envelope" xmlns:dp="http://www.datapower.com/schemas/management">
<mAdminState>enabled</mAdminState>
<Filename>sharedcert:///Comodo.RSA.Certification.Authority.cer</Filename>
<PasswordAlias>off</PasswordAlias>
<IgnoreExpiration>off</IgnoreExpiration></CryptoCertificate><CryptoCertificate name="GoDaddyG2Cert" xmlns:env="http://www.w3.org/2003/05/soap-envelope" xmlns:dp="http://www.datapower.com/schemas/management">
<mAdminState>enabled</mAdminState>
<Filename>sharedcert:///gd_bundle_new.crt</Filename>
<PasswordAlias>off</PasswordAlias>
<IgnoreExpiration>off</IgnoreExpiration></CryptoCertificate><CryptoCertificate name="DigiCertChainCert" xmlns:env="http://www.w3.org/2003/05/soap-envelope" xmlns:dp="http://www.datapower.com/schemas/management">
<mAdminState>enabled</mAdminState>
<Filename>sharedcert:///DigiCertSHA2SecureServerCA_new.crt</Filename>
<PasswordAlias>off</PasswordAlias>
<IgnoreExpiration>off</IgnoreExpiration></CryptoCertificate><CryptoCertificate name="DigiHighAssuranceEVRootCert" xmlns:env="http://www.w3.org/2003/05/soap-envelope" xmlns:dp="http://www.datapower.com/schemas/management">
<mAdminState>enabled</mAdminState>
<Filename>sharedcert:///DigiCertHighAssuranceEVRootCA.crt</Filename>
<PasswordAlias>off</PasswordAlias>
<IgnoreExpiration>off</IgnoreExpiration></CryptoCertificate><CryptoCertificate name="GoogleInternetAuthorityG3Cert" xmlns:env="http://www.w3.org/2003/05/soap-envelope" xmlns:dp="http://www.datapower.com/schemas/management">
<mAdminState>enabled</mAdminState>
<Filename>sharedcert:///GoogleInternetAuthorityG3.cer</Filename>
<PasswordAlias>off</PasswordAlias>
<IgnoreExpiration>off</IgnoreExpiration></CryptoCertificate><CryptoCertificate name="GlobalSignCert" xmlns:env="http://www.w3.org/2003/05/soap-envelope" xmlns:dp="http://www.datapower.com/schemas/management">
<mAdminState>enabled</mAdminState>
<Filename>sharedcert:///GlobalSign.cer</Filename>
<PasswordAlias>off</PasswordAlias>
<IgnoreExpiration>off</IgnoreExpiration></CryptoCertificate><CryptoCertificate name="DigiSymcorInterCert" xmlns:env="http://www.w3.org/2003/05/soap-envelope" xmlns:dp="http://www.datapower.com/schemas/management">
<mAdminState>enabled</mAdminState>
<Filename>sharedcert:///DigiCert_SymCorintermediate_SHA2.cer.cer</Filename>
<PasswordAlias>off</PasswordAlias>
<IgnoreExpiration>off</IgnoreExpiration></CryptoCertificate><CryptoCertificate name="ThawteIntermediateG2Cert" xmlns:env="http://www.w3.org/2003/05/soap-envelope" xmlns:dp="http://www.datapower.com/schemas/management">
<mAdminState>enabled</mAdminState>
<Filename>sharedcert:///thawte_SSL_CA_G2.crt</Filename>
<PasswordAlias>off</PasswordAlias>
<IgnoreExpiration>off</IgnoreExpiration></CryptoCertificate><CryptoCertificate name="Entrust_L1K_2024_ChainCert" xmlns:env="http://www.w3.org/2003/05/soap-envelope" xmlns:dp="http://www.datapower.com/schemas/management">
<mAdminState>enabled</mAdminState>
<Filename>sharedcert:///entrust_L1K_2024_chain.crt</Filename>
<PasswordAlias>off</PasswordAlias>
<IgnoreExpiration>off</IgnoreExpiration></CryptoCertificate><CryptoCertificate name="Entrust_L1KChainCert" xmlns:env="http://www.w3.org/2003/05/soap-envelope" xmlns:dp="http://www.datapower.com/schemas/management">
<mAdminState>enabled</mAdminState>
<Filename>sharedcert:///entrust_L1Kchain.cer</Filename>
<PasswordAlias>off</PasswordAlias>
<IgnoreExpiration>off</IgnoreExpiration></CryptoCertificate><CryptoCertificate name="SymantecIntermediateEVCert" xmlns:env="http://www.w3.org/2003/05/soap-envelope" xmlns:dp="http://www.datapower.com/schemas/management">
<mAdminState>enabled</mAdminState>
<Filename>sharedcert:///Symantec_Class_3_Extended_Validation_SHA256_SSL_CA.cer</Filename>
<PasswordAlias>off</PasswordAlias>
<IgnoreExpiration>off</IgnoreExpiration></CryptoCertificate><CryptoCertificate name="ThawteRSACA2018Cert" xmlns:env="http://www.w3.org/2003/05/soap-envelope" xmlns:dp="http://www.datapower.com/schemas/management">
<mAdminState>enabled</mAdminState>
<Filename>sharedcert:///BMOFG-Root2.cer</Filename>
<PasswordAlias>off</PasswordAlias>
<IgnoreExpiration>off</IgnoreExpiration></CryptoCertificate><CryptoValCred name="CAValCred" xmlns:env="http://www.w3.org/2003/05/soap-envelope" xmlns:dp="http://www.datapower.com/schemas/management">
<mAdminState>enabled</mAdminState>
<Certificate class="CryptoCertificate">ThawteTlsRsaCAG1IntCert</Certificate>
<Certificate class="CryptoCertificate">VeriSign-G4-intermediateCert</Certificate>
<Certificate class="CryptoCertificate">Verisign-G5-rootCert</Certificate>
<Certificate class="CryptoCertificate">SymantecIntermediateCert</Certificate>
<Certificate class="CryptoCertificate">ThawteIntermediateCert</Certificate>
<Certificate class="CryptoCertificate">DigiCert_Global_CA_G2</Certificate>
<Certificate class="CryptoCertificate">DigiCert_Global_Root_G2</Certificate>
<Certificate class="CryptoCertificate">Comodo_RSA_Organization_IntermediateCert</Certificate>
<Certificate class="CryptoCertificate">MSsignerSHA2cert</Certificate>
<Certificate class="CryptoCertificate">ComodoRSACertificationAuthorityCert</Certificate>
<Certificate class="CryptoCertificate">GoDaddyG2Cert</Certificate>
<Certificate class="CryptoCertificate">DigiCertChainCert</Certificate>
<Certificate class="CryptoCertificate">DigiHighAssuranceEVRootCert</Certificate>
<Certificate class="CryptoCertificate">GoogleInternetAuthorityG3Cert</Certificate>
<Certificate class="CryptoCertificate">GlobalSignCert</Certificate>
<Certificate class="CryptoCertificate">DigiSymcorInterCert</Certificate>
<Certificate class="CryptoCertificate">ThawteIntermediateG2Cert</Certificate>
<Certificate class="CryptoCertificate">Entrust_L1K_2024_ChainCert</Certificate>
<Certificate class="CryptoCertificate">Entrust_L1KChainCert</Certificate>
<Certificate class="CryptoCertificate">SymantecIntermediateEVCert</Certificate>
<Certificate class="CryptoCertificate">ThawteRSACA2018Cert</Certificate>
<CertValidationMode>legacy</CertValidationMode>
<UseCRL>on</UseCRL>
<RequireCRL>off</RequireCRL>
<CRLDPHandling>ignore</CRLDPHandling>
<InitialPolicySet>2.5.29.32.0</InitialPolicySet>
<ExplicitPolicy>off</ExplicitPolicy>
<CheckDates>on</CheckDates></CryptoValCred><SSLClientProfile name="CAChannelClientProfile" xmlns:env="http://www.w3.org/2003/05/soap-envelope" xmlns:dp="http://www.datapower.com/schemas/management">
<mAdminState>enabled</mAdminState>
<Protocols>
<SSLv3>off</SSLv3>
<TLSv1d0>off</TLSv1d0>
<TLSv1d1>off</TLSv1d1>
<TLSv1d2>on</TLSv1d2></Protocols>
<Ciphers>ECDHE_ECDSA_WITH_AES_256_GCM_SHA384</Ciphers>
<Ciphers>ECDHE_RSA_WITH_AES_256_GCM_SHA384</Ciphers>
<Ciphers>ECDHE_ECDSA_WITH_AES_256_CBC_SHA384</Ciphers>
<Ciphers>ECDHE_RSA_WITH_AES_256_CBC_SHA384</Ciphers>
<Ciphers>ECDHE_ECDSA_WITH_AES_256_CBC_SHA</Ciphers>
<Ciphers>ECDHE_RSA_WITH_AES_256_CBC_SHA</Ciphers>
<Ciphers>DHE_DSS_WITH_AES_256_GCM_SHA384</Ciphers>
<Ciphers>DHE_RSA_WITH_AES_256_GCM_SHA384</Ciphers>
<Ciphers>DHE_RSA_WITH_AES_256_CBC_SHA256</Ciphers>
<Ciphers>DHE_DSS_WITH_AES_256_CBC_SHA256</Ciphers>
<Ciphers>DHE_RSA_WITH_AES_256_CBC_SHA</Ciphers>
<Ciphers>DHE_DSS_WITH_AES_256_CBC_SHA</Ciphers>
<Ciphers>RSA_WITH_AES_256_GCM_SHA384</Ciphers>
<Ciphers>RSA_WITH_AES_256_CBC_SHA256</Ciphers>
<Ciphers>RSA_WITH_AES_256_CBC_SHA</Ciphers>
<Ciphers>ECDHE_ECDSA_WITH_AES_128_GCM_SHA256</Ciphers>
<Ciphers>ECDHE_RSA_WITH_AES_128_GCM_SHA256</Ciphers>
<Ciphers>ECDHE_ECDSA_WITH_AES_128_CBC_SHA256</Ciphers>
<Ciphers>ECDHE_RSA_WITH_AES_128_CBC_SHA256</Ciphers>
<Ciphers>ECDHE_ECDSA_WITH_AES_128_CBC_SHA</Ciphers>
<Ciphers>ECDHE_RSA_WITH_AES_128_CBC_SHA</Ciphers>
<Ciphers>DHE_DSS_WITH_AES_128_GCM_SHA256</Ciphers>
<Ciphers>DHE_RSA_WITH_AES_128_GCM_SHA256</Ciphers>
<Ciphers>DHE_RSA_WITH_AES_128_CBC_SHA256</Ciphers>
<Ciphers>DHE_DSS_WITH_AES_128_CBC_SHA256</Ciphers>
<Ciphers>DHE_RSA_WITH_AES_128_CBC_SHA</Ciphers>
<Ciphers>DHE_DSS_WITH_AES_128_CBC_SHA</Ciphers>
<Ciphers>RSA_WITH_AES_128_GCM_SHA256</Ciphers>
<Ciphers>RSA_WITH_AES_128_CBC_SHA256</Ciphers>
<Ciphers>RSA_WITH_AES_128_CBC_SHA</Ciphers>
<Ciphers>ECDHE_ECDSA_WITH_3DES_EDE_CBC_SHA</Ciphers>
<Ciphers>ECDHE_RSA_WITH_3DES_EDE_CBC_SHA</Ciphers>
<Ciphers>DHE_RSA_WITH_3DES_EDE_CBC_SHA</Ciphers>
<Ciphers>DHE_DSS_WITH_3DES_EDE_CBC_SHA</Ciphers>
<Ciphers>RSA_WITH_3DES_EDE_CBC_SHA</Ciphers>
<Idcred class="CryptoIdentCred">DataPowerIDCredForChannel</Idcred>
<ValidateServerCert>on</ValidateServerCert>
<Valcred class="CryptoValCred">CAValCred</Valcred>
<Caching>on</Caching>
<CacheTimeout>300</CacheTimeout>
<CacheSize>100</CacheSize>
<SSLClientFeatures>
<use-sni>on</use-sni>
<permit-insecure-servers>off</permit-insecure-servers>
<compression>off</compression></SSLClientFeatures>
<EllipticCurves>secp521r1</EllipticCurves>
<EllipticCurves>secp384r1</EllipticCurves>
<EllipticCurves>secp256k1</EllipticCurves>
<EllipticCurves>secp256r1</EllipticCurves>
<UseCustomSNIHostname>no</UseCustomSNIHostname>
<CustomSNIHostname>jasper-bs-secure-st2-jspreports.osft.qa-int.bmogc.net</CustomSNIHostname></SSLClientProfile><Matching name="@@SERVICE_NAME@@Match" xmlns:env="http://www.w3.org/2003/05/soap-envelope" xmlns:dp="http://www.datapower.com/schemas/management">
<mAdminState>enabled</mAdminState>
<MatchRules>
<Type>url</Type>
<HttpTag/>
<HttpValue/>
<Url>/smartcore/ob/AWS-RegularProxy/*</Url>
<ErrorCode/>
<XPATHExpression/>
<Method>default</Method>
<CustomMethod/></MatchRules>
<MatchWithPCRE>off</MatchWithPCRE>
<CombineWithOr>off</CombineWithOr></Matching><StylePolicyAction name="@@SERVICE_NAME@@MPGPolicy_Request_Rule_xform_0" xmlns:env="http://www.w3.org/2003/05/soap-envelope" xmlns:dp="http://www.datapower.com/schemas/management">
<mAdminState>enabled</mAdminState>
<Type>xform</Type>
<Input>NULL</Input>
<Transform>local:///dpcommon/xsl/bmo-transaction-log.xsl</Transform>
<ParseSettingsReference>
<URL/>
<Literal/>
<Default/></ParseSettingsReference>
<ParseMetricsResultType>none</ParseMetricsResultType>
<TransformLanguage>none</TransformLanguage>
<ActionDebug persisted="false">off</ActionDebug>
<Output>NULL</Output>
<NamedInOutLocationType>default</NamedInOutLocationType>
<SSLClientConfigType>proxy</SSLClientConfigType>
<OutputType>default</OutputType>
<Transactional>off</Transactional>
<SOAPValidation>body</SOAPValidation>
<SQLSourceType>static</SQLSourceType>
<JWSVerifyStripSignature>on</JWSVerifyStripSignature>
<Asynchronous>off</Asynchronous>
<ResultsMode>first-available</ResultsMode>
<RetryCount>0</RetryCount>
<RetryInterval>1000</RetryInterval>
<MultipleOutputs>off</MultipleOutputs>
<IteratorType>XPATH</IteratorType>
<Timeout>0</Timeout>
<MethodRewriteType>GET</MethodRewriteType>
<MethodType>POST</MethodType>
<MethodType2>POST</MethodType2></StylePolicyAction><StylePolicyAction name="@@SERVICE_NAME@@MPGPolicy_Request_Rule_xform_2" xmlns:env="http://www.w3.org/2003/05/soap-envelope" xmlns:dp="http://www.datapower.com/schemas/management">
<mAdminState>enabled</mAdminState>
<Type>xform</Type>
<Input>NULL</Input>
<Transform>local:///dpcommon/xsl/ClientOUIDAuth.xsl</Transform>
<ParseSettingsReference>
<URL/>
<Literal/>
<Default/></ParseSettingsReference>
<ParseMetricsResultType>none</ParseMetricsResultType>
<TransformLanguage>none</TransformLanguage>
<ActionDebug persisted="false">off</ActionDebug>
<Output>NULL</Output>
<NamedInOutLocationType>default</NamedInOutLocationType>
<SSLClientConfigType>proxy</SSLClientConfigType>
<OutputType>default</OutputType>
<Transactional>off</Transactional>
<SOAPValidation>body</SOAPValidation>
<SQLSourceType>static</SQLSourceType>
<JWSVerifyStripSignature>on</JWSVerifyStripSignature>
<Asynchronous>off</Asynchronous>
<ResultsMode>first-available</ResultsMode>
<RetryCount>0</RetryCount>
<RetryInterval>1000</RetryInterval>
<MultipleOutputs>off</MultipleOutputs>
<IteratorType>XPATH</IteratorType>
<Timeout>0</Timeout>
<MethodRewriteType>GET</MethodRewriteType>
<MethodType>POST</MethodType>
<MethodType2>POST</MethodType2></StylePolicyAction><StylePolicyAction name="@@SERVICE_NAME@@MPGPolicy_Request_Rule_xform_1" xmlns:env="http://www.w3.org/2003/05/soap-envelope" xmlns:dp="http://www.datapower.com/schemas/management">
<mAdminState>enabled</mAdminState>
<Type>xform</Type>
<Input>NULL</Input>
<Transform>local:///mpg/AWSProxyMPG/@@SERVICE_NAME@@MPG/xsl/AWSEndpointForward.xsl</Transform>
<ParseSettingsReference>
<URL/>
<Literal/>
<Default/></ParseSettingsReference>
<ParseMetricsResultType>none</ParseMetricsResultType>
<TransformLanguage>none</TransformLanguage>
<ActionDebug persisted="false">off</ActionDebug>
<Output>NULL</Output>
<NamedInOutLocationType>default</NamedInOutLocationType>
<SSLClientConfigType>proxy</SSLClientConfigType>
<OutputType>default</OutputType>
<Transactional>off</Transactional>
<SOAPValidation>body</SOAPValidation>
<SQLSourceType>static</SQLSourceType>
<JWSVerifyStripSignature>on</JWSVerifyStripSignature>
<Asynchronous>off</Asynchronous>
<ResultsMode>first-available</ResultsMode>
<RetryCount>0</RetryCount>
<RetryInterval>1000</RetryInterval>
<MultipleOutputs>off</MultipleOutputs>
<IteratorType>XPATH</IteratorType>
<Timeout>0</Timeout>
<MethodRewriteType>GET</MethodRewriteType>
<MethodType>POST</MethodType>
<MethodType2>POST</MethodType2></StylePolicyAction><StylePolicyAction name="@@SERVICE_NAME@@MPGPolicy_Request_Rule_results_output_0" xmlns:env="http://www.w3.org/2003/05/soap-envelope" xmlns:dp="http://www.datapower.com/schemas/management">
<mAdminState>enabled</mAdminState>
<Type>results</Type>
<Input>INPUT</Input>
<ParseSettingsReference>
<URL/>
<Literal/>
<Default/></ParseSettingsReference>
<ParseMetricsResultType>none</ParseMetricsResultType>
<TransformLanguage>none</TransformLanguage>
<ActionDebug persisted="false">off</ActionDebug>
<NamedInOutLocationType>default</NamedInOutLocationType>
<SSLClientConfigType>proxy</SSLClientConfigType>
<OutputType>default</OutputType>
<Transactional>off</Transactional>
<SOAPValidation>body</SOAPValidation>
<SQLSourceType>static</SQLSourceType>
<JWSVerifyStripSignature>on</JWSVerifyStripSignature>
<Asynchronous>off</Asynchronous>
<ResultsMode>first-available</ResultsMode>
<RetryCount>0</RetryCount>
<RetryInterval>1000</RetryInterval>
<MultipleOutputs>off</MultipleOutputs>
<IteratorType>XPATH</IteratorType>
<Timeout>0</Timeout>
<MethodRewriteType>GET</MethodRewriteType>
<MethodType>POST</MethodType>
<MethodType2>POST</MethodType2></StylePolicyAction><StylePolicyRule name="@@SERVICE_NAME@@MPGPolicy_Request_Rule" xmlns:env="http://www.w3.org/2003/05/soap-envelope" xmlns:dp="http://www.datapower.com/schemas/management">
<mAdminState>enabled</mAdminState>
<Actions class="StylePolicyAction">@@SERVICE_NAME@@MPGPolicy_Request_Rule_xform_0</Actions>
<Actions class="StylePolicyAction">@@SERVICE_NAME@@MPGPolicy_Request_Rule_xform_2</Actions>
<Actions class="StylePolicyAction">@@SERVICE_NAME@@MPGPolicy_Request_Rule_xform_1</Actions>
<Actions class="StylePolicyAction">@@SERVICE_NAME@@MPGPolicy_Request_Rule_results_output_0</Actions>
<Direction>request-rule</Direction>
<InputFormat>none</InputFormat>
<OutputFormat>none</OutputFormat>
<NonXMLProcessing>on</NonXMLProcessing>
<Unprocessed>off</Unprocessed></StylePolicyRule><Matching name="All" xmlns:env="http://www.w3.org/2003/05/soap-envelope" xmlns:dp="http://www.datapower.com/schemas/management">
<mAdminState>enabled</mAdminState>
<MatchRules>
<Type>url</Type>
<HttpTag/>
<HttpValue/>
<Url>*</Url>
<ErrorCode/>
<XPATHExpression/>
<Method>default</Method>
<CustomMethod/></MatchRules>
<MatchWithPCRE>off</MatchWithPCRE>
<CombineWithOr>off</CombineWithOr></Matching><StylePolicyAction name="@@SERVICE_NAME@@MPGPolicy_Response_Rule_xform_1" xmlns:env="http://www.w3.org/2003/05/soap-envelope" xmlns:dp="http://www.datapower.com/schemas/management">
<mAdminState>enabled</mAdminState>
<Type>xform</Type>
<Input>NULL</Input>
<Transform>local:///dpcommon/xsl/bmo-transaction-log.xsl</Transform>
<ParseSettingsReference>
<URL/>
<Literal/>
<Default/></ParseSettingsReference>
<ParseMetricsResultType>none</ParseMetricsResultType>
<TransformLanguage>none</TransformLanguage>
<ActionDebug persisted="false">off</ActionDebug>
<Output>NULL</Output>
<NamedInOutLocationType>default</NamedInOutLocationType>
<SSLClientConfigType>proxy</SSLClientConfigType>
<OutputType>default</OutputType>
<Transactional>off</Transactional>
<SOAPValidation>body</SOAPValidation>
<SQLSourceType>static</SQLSourceType>
<JWSVerifyStripSignature>on</JWSVerifyStripSignature>
<Asynchronous>off</Asynchronous>
<ResultsMode>first-available</ResultsMode>
<RetryCount>0</RetryCount>
<RetryInterval>1000</RetryInterval>
<MultipleOutputs>off</MultipleOutputs>
<IteratorType>XPATH</IteratorType>
<Timeout>0</Timeout>
<MethodRewriteType>GET</MethodRewriteType>
<MethodType>POST</MethodType>
<MethodType2>POST</MethodType2></StylePolicyAction><StylePolicyAction name="@@SERVICE_NAME@@MPGPolicy_Response_Rule_results_1" xmlns:env="http://www.w3.org/2003/05/soap-envelope" xmlns:dp="http://www.datapower.com/schemas/management">
<mAdminState>enabled</mAdminState>
<Type>results</Type>
<Input>INPUT</Input>
<ParseSettingsReference>
<URL/>
<Literal/>
<Default/></ParseSettingsReference>
<ParseMetricsResultType>none</ParseMetricsResultType>
<TransformLanguage>none</TransformLanguage>
<ActionDebug persisted="false">off</ActionDebug>
<NamedInOutLocationType>default</NamedInOutLocationType>
<SSLClientConfigType>proxy</SSLClientConfigType>
<OutputType>default</OutputType>
<Transactional>off</Transactional>
<SOAPValidation>body</SOAPValidation>
<SQLSourceType>static</SQLSourceType>
<JWSVerifyStripSignature>on</JWSVerifyStripSignature>
<Asynchronous>off</Asynchronous>
<ResultsMode>first-available</ResultsMode>
<RetryCount>0</RetryCount>
<RetryInterval>1000</RetryInterval>
<MultipleOutputs>off</MultipleOutputs>
<IteratorType>XPATH</IteratorType>
<Timeout>0</Timeout>
<MethodRewriteType>GET</MethodRewriteType>
<MethodType>POST</MethodType>
<MethodType2>POST</MethodType2></StylePolicyAction><StylePolicyRule name="@@SERVICE_NAME@@MPGPolicy_Response_Rule" xmlns:env="http://www.w3.org/2003/05/soap-envelope" xmlns:dp="http://www.datapower.com/schemas/management">
<mAdminState>enabled</mAdminState>
<Actions class="StylePolicyAction">@@SERVICE_NAME@@MPGPolicy_Response_Rule_xform_1</Actions>
<Actions class="StylePolicyAction">@@SERVICE_NAME@@MPGPolicy_Response_Rule_results_1</Actions>
<Direction>response-rule</Direction>
<InputFormat>none</InputFormat>
<OutputFormat>none</OutputFormat>
<NonXMLProcessing>off</NonXMLProcessing>
<Unprocessed>off</Unprocessed></StylePolicyRule><StylePolicyAction name="@@SERVICE_NAME@@MPGPolicy_Error_Rule_xform_3" xmlns:env="http://www.w3.org/2003/05/soap-envelope" xmlns:dp="http://www.datapower.com/schemas/management">
<mAdminState>enabled</mAdminState>
<Type>xform</Type>
<Input>NULL</Input>
<Transform>local:///dpcommon/xsl/bmo-transaction-log.xsl</Transform>
<ParseSettingsReference>
<URL/>
<Literal/>
<Default/></ParseSettingsReference>
<ParseMetricsResultType>none</ParseMetricsResultType>
<TransformLanguage>none</TransformLanguage>
<ActionDebug persisted="false">off</ActionDebug>
<Output>NULL</Output>
<NamedInOutLocationType>default</NamedInOutLocationType>
<SSLClientConfigType>proxy</SSLClientConfigType>
<OutputType>default</OutputType>
<Transactional>off</Transactional>
<SOAPValidation>body</SOAPValidation>
<SQLSourceType>static</SQLSourceType>
<JWSVerifyStripSignature>on</JWSVerifyStripSignature>
<Asynchronous>off</Asynchronous>
<ResultsMode>first-available</ResultsMode>
<RetryCount>0</RetryCount>
<RetryInterval>1000</RetryInterval>
<MultipleOutputs>off</MultipleOutputs>
<IteratorType>XPATH</IteratorType>
<Timeout>0</Timeout>
<MethodRewriteType>GET</MethodRewriteType>
<MethodType>POST</MethodType>
<MethodType2>POST</MethodType2></StylePolicyAction><StylePolicyAction name="@@SERVICE_NAME@@MPGPolicy_Error_Rule_gatewayscript_1" xmlns:env="http://www.w3.org/2003/05/soap-envelope" xmlns:dp="http://www.datapower.com/schemas/management">
<mAdminState>enabled</mAdminState>
<Type>gatewayscript</Type>
<Input>NULL</Input>
<ParseSettingsReference>
<URL/>
<Literal/>
<Default/></ParseSettingsReference>
<ParseMetricsResultType>none</ParseMetricsResultType>
<TransformLanguage>none</TransformLanguage>
<GatewayScriptLocation>local:///dpcommon/js/json_error_handling.js</GatewayScriptLocation>
<ActionDebug persisted="false">off</ActionDebug>
<Output>PIPE</Output>
<NamedInOutLocationType>default</NamedInOutLocationType>
<SSLClientConfigType>proxy</SSLClientConfigType>
<Transactional>off</Transactional>
<SOAPValidation>body</SOAPValidation>
<SQLSourceType>static</SQLSourceType>
<JWSVerifyStripSignature>on</JWSVerifyStripSignature>
<Asynchronous>off</Asynchronous>
<ResultsMode>first-available</ResultsMode>
<RetryCount>0</RetryCount>
<RetryInterval>1000</RetryInterval>
<MultipleOutputs>off</MultipleOutputs>
<IteratorType>XPATH</IteratorType>
<Timeout>0</Timeout>
<MethodRewriteType>GET</MethodRewriteType>
<MethodType>POST</MethodType>
<MethodType2>POST</MethodType2></StylePolicyAction><StylePolicyAction name="@@SERVICE_NAME@@MPGPolicy_Error_Rule_results_1" xmlns:env="http://www.w3.org/2003/05/soap-envelope" xmlns:dp="http://www.datapower.com/schemas/management">
<mAdminState>enabled</mAdminState>
<Type>results</Type>
<Input>PIPE</Input>
<ParseSettingsReference>
<URL/>
<Literal/>
<Default/></ParseSettingsReference>
<ParseMetricsResultType>none</ParseMetricsResultType>
<TransformLanguage>none</TransformLanguage>
<ActionDebug persisted="false">off</ActionDebug>
<NamedInOutLocationType>default</NamedInOutLocationType>
<SSLClientConfigType>proxy</SSLClientConfigType>
<OutputType>default</OutputType>
<Transactional>off</Transactional>
<SOAPValidation>body</SOAPValidation>
<SQLSourceType>static</SQLSourceType>
<JWSVerifyStripSignature>on</JWSVerifyStripSignature>
<Asynchronous>off</Asynchronous>
<ResultsMode>first-available</ResultsMode>
<RetryCount>0</RetryCount>
<RetryInterval>1000</RetryInterval>
<MultipleOutputs>off</MultipleOutputs>
<IteratorType>XPATH</IteratorType>
<Timeout>0</Timeout>
<MethodRewriteType>GET</MethodRewriteType>
<MethodType>POST</MethodType>
<MethodType2>POST</MethodType2></StylePolicyAction><StylePolicyRule name="@@SERVICE_NAME@@MPGPolicy_Error_Rule" xmlns:env="http://www.w3.org/2003/05/soap-envelope" xmlns:dp="http://www.datapower.com/schemas/management">
<mAdminState>enabled</mAdminState>
<Actions class="StylePolicyAction">@@SERVICE_NAME@@MPGPolicy_Error_Rule_xform_3</Actions>
<Actions class="StylePolicyAction">@@SERVICE_NAME@@MPGPolicy_Error_Rule_gatewayscript_1</Actions>
<Actions class="StylePolicyAction">@@SERVICE_NAME@@MPGPolicy_Error_Rule_results_1</Actions>
<Direction>error-rule</Direction>
<InputFormat>none</InputFormat>
<OutputFormat>none</OutputFormat>
<NonXMLProcessing>off</NonXMLProcessing>
<Unprocessed>off</Unprocessed></StylePolicyRule><StylePolicy name="@@SERVICE_NAME@@MPGPolicy" xmlns:env="http://www.w3.org/2003/05/soap-envelope" xmlns:dp="http://www.datapower.com/schemas/management">
<mAdminState>enabled</mAdminState>
<DefStylesheetForSoap>store:///filter-reject-all.xsl</DefStylesheetForSoap>
<DefStylesheetForXsl>store:///identity.xsl</DefStylesheetForXsl>
<DefXQueryForJSON>store:///reject-all-json.xq</DefXQueryForJSON>
<PolicyMaps>
<Match class="Matching">@@SERVICE_NAME@@Match</Match>
<Rule class="StylePolicyRule">@@SERVICE_NAME@@MPGPolicy_Request_Rule</Rule></PolicyMaps>
<PolicyMaps>
<Match class="Matching">All</Match>
<Rule class="StylePolicyRule">@@SERVICE_NAME@@MPGPolicy_Response_Rule</Rule></PolicyMaps>
<PolicyMaps>
<Match class="Matching">All</Match>
<Rule class="StylePolicyRule">@@SERVICE_NAME@@MPGPolicy_Error_Rule</Rule></PolicyMaps></StylePolicy><PolicyAttachments name="@@SERVICE_NAME@@MPG" xmlns:env="http://www.w3.org/2003/05/soap-envelope" xmlns:dp="http://www.datapower.com/schemas/management">
<mAdminState>enabled</mAdminState>
<EnforcementMode>enforce</EnforcementMode>
<PolicyReferences>on</PolicyReferences>
<SLAEnforcementMode>allow-if-no-sla</SLAEnforcementMode></PolicyAttachments><MultiProtocolGateway name="@@SERVICE_NAME@@MPG" xmlns:env="http://www.w3.org/2003/05/soap-envelope" xmlns:dp="http://www.datapower.com/schemas/management">
<mAdminState>enabled</mAdminState>
<UserSummary>Proxy for CG AWS Cloud Services</UserSummary>
<Priority>normal</Priority>
<FrontProtocol class="HTTPSSourceProtocolHandler">@@SERVICE_NAME@@MPGHttpsFSH</FrontProtocol>
<XMLManager class="XMLManager">default</XMLManager>
<SSLClientConfigType>client</SSLClientConfigType>
<SSLClient class="SSLClientProfile">CAChannelClientProfile</SSLClient>
<StylesheetParameters>
<ParameterName>ClientOUID</ParameterName>
<ParameterValue>@@SERVICE_CLIENTOUID@@</ParameterValue></StylesheetParameters>
<StylesheetParameters>
<ParameterName>TestOUID</ParameterName>
<ParameterValue>TD</ParameterValue></StylesheetParameters>
<DefaultParamNamespace>http://www.datapower.com/param/config</DefaultParamNamespace>
<QueryParamNamespace>http://www.datapower.com/param/query</QueryParamNamespace>
<BackendUrl>https://sbx-aws-apigw01.devhcloud.bmogc.net</BackendUrl>
<PropagateURI>off</PropagateURI>
<MonitorProcessingPolicy>terminate-at-first-throttle</MonitorProcessingPolicy>
<RequestAttachments>strip</RequestAttachments>
<ResponseAttachments>strip</ResponseAttachments>
<RequestAttachmentsFlowControl>off</RequestAttachmentsFlowControl>
<ResponseAttachmentsFlowControl>off</ResponseAttachmentsFlowControl>
<RootPartNotFirstAction>process-in-order</RootPartNotFirstAction>
<FrontAttachmentFormat>dynamic</FrontAttachmentFormat>
<BackAttachmentFormat>dynamic</BackAttachmentFormat>
<MIMEFrontHeaders>on</MIMEFrontHeaders>
<MIMEBackHeaders>on</MIMEBackHeaders>
<StreamOutputToBack>buffer-until-verification</StreamOutputToBack>
<StreamOutputToFront>buffer-until-verification</StreamOutputToFront>
<MaxMessageSize>@@SERVICE_PAYLOAD_SIZE@@</MaxMessageSize>
<GatewayParserLimits>off</GatewayParserLimits>
<ParserLimitsElementDepth>512</ParserLimitsElementDepth>
<ParserLimitsAttributeCount>128</ParserLimitsAttributeCount>
<ParserLimitsMaxNodeSize>33554432</ParserLimitsMaxNodeSize>
<ParserLimitsForbidExternalReferences>on</ParserLimitsForbidExternalReferences>
<ParserLimitsExternalReferences>forbid</ParserLimitsExternalReferences>
<ParserLimitsMaxPrefixes>1024</ParserLimitsMaxPrefixes>
<ParserLimitsMaxNamespaces>1024</ParserLimitsMaxNamespaces>
<ParserLimitsMaxLocalNames>60000</ParserLimitsMaxLocalNames>
<ParserLimitsAttachmentByteCount>2000000000</ParserLimitsAttachmentByteCount>
<ParserLimitsAttachmentPackageByteCount>0</ParserLimitsAttachmentPackageByteCount>
<DebugMode persisted="false">on</DebugMode>
<DebuggerType>internal</DebuggerType>
<DebugHistory>25</DebugHistory>
<FlowControl>off</FlowControl>
<SOAPSchemaURL>store:///schemas/soap-envelope.xsd</SOAPSchemaURL>
<FrontTimeout>@@SERVICE_TIMEOUT@@</FrontTimeout>
<BackTimeout>@@SERVICE_TIMEOUT@@</BackTimeout>
<FrontPersistentTimeout>180</FrontPersistentTimeout>
<BackPersistentTimeout>180</BackPersistentTimeout>
<IncludeResponseTypeEncoding>on</IncludeResponseTypeEncoding>
<BackHTTPVersion>HTTP/1.1</BackHTTPVersion>
<PersistentConnections>on</PersistentConnections>
<LoopDetection>off</LoopDetection>
<DoHostRewriting>off</DoHostRewriting>
<DoChunkedUpload>off</DoChunkedUpload>
<ProcessHTTPErrors>on</ProcessHTTPErrors>
<HTTPClientIPLabel>X-Client-IP</HTTPClientIPLabel>
<HTTPLogCorIDLabel>X-Global-Transaction-ID</HTTPLogCorIDLabel>
<InOrderMode>
<Request>off</Request>
<Backend>off</Backend>
<Response>off</Response></InOrderMode>
<WSAMode>sync2sync</WSAMode>
<WSARequireAAA>on</WSARequireAAA>
<WSAStrip>on</WSAStrip>
<WSADefaultReplyTo>http://schemas.xmlsoap.org/ws/2004/08/addressing/role/anonymous</WSADefaultReplyTo>
<WSADefaultFaultTo>http://schemas.xmlsoap.org/ws/2004/08/addressing/role/anonymous</WSADefaultFaultTo>
<WSAForce>off</WSAForce>
<WSAGenStyle>sync</WSAGenStyle>
<WSAHTTPAsyncResponseCode>204</WSAHTTPAsyncResponseCode>
<WSATimeout>120</WSATimeout>
<WSRMEnabled>off</WSRMEnabled>
<WSRMSequenceExpiration>3600</WSRMSequenceExpiration>
<WSRMDestinationAcceptCreateSequence>on</WSRMDestinationAcceptCreateSequence>
<WSRMDestinationMaximumSequences>400</WSRMDestinationMaximumSequences>
<WSRMDestinationInOrder>off</WSRMDestinationInOrder>
<WSRMDestinationMaximumInOrderQueueLength>10</WSRMDestinationMaximumInOrderQueueLength>
<WSRMDestinationAcceptOffers>off</WSRMDestinationAcceptOffers>
<WSRMFrontForce>off</WSRMFrontForce>
<WSRMBackForce>off</WSRMBackForce>
<WSRMBackCreateSequence>off</WSRMBackCreateSequence>
<WSRMFrontCreateSequence>off</WSRMFrontCreateSequence>
<WSRMSourceMakeOffer>off</WSRMSourceMakeOffer>
<WSRMUsesSequenceSSL>off</WSRMUsesSequenceSSL>
<WSRMSourceMaximumSequences>400</WSRMSourceMaximumSequences>
<WSRMSourceRetransmissionInterval>10</WSRMSourceRetransmissionInterval>
<WSRMSourceExponentialBackoff>on</WSRMSourceExponentialBackoff>
<WSRMSourceMaximumRetransmissions>4</WSRMSourceMaximumRetransmissions>
<WSRMSourceMaximumQueueLength>30</WSRMSourceMaximumQueueLength>
<WSRMSourceRequestAckCount>1</WSRMSourceRequestAckCount>
<WSRMSourceInactivityClose>360</WSRMSourceInactivityClose>
<ForcePolicyExec>off</ForcePolicyExec>
<RewriteErrors>on</RewriteErrors>
<DelayErrors>on</DelayErrors>
<DelayErrorsDuration>1000</DelayErrorsDuration>
<RequestType>preprocessed</RequestType>
<ResponseType>preprocessed</ResponseType>
<FollowRedirects>on</FollowRedirects>
<RewriteLocationHeader>off</RewriteLocationHeader>
<StylePolicy class="StylePolicy">@@SERVICE_NAME@@MPGPolicy</StylePolicy>
<Type>static-backend</Type>
<AllowCompression>off</AllowCompression>
<AllowCacheControlHeader>off</AllowCacheControlHeader>
<PolicyAttachments class="PolicyAttachments">@@SERVICE_NAME@@MPG</PolicyAttachments>
<WSMAgentMonitor>off</WSMAgentMonitor>
<WSMAgentMonitorPCM>all-messages</WSMAgentMonitorPCM>
<ProxyHTTPResponse>on</ProxyHTTPResponse>
<TransactionTimeout>0</TransactionTimeout></MultiProtocolGateway></configuration><files><file name="sharedcert:///iambccdpdit.bmogc.net.pfx" src="sharedcert/iambccdpdit.bmogc.net.pfx" location="sharedcert" key="true"/><file name="sharedcert:///MS_QA_issuing_CA1.cer" src="sharedcert/MS_QA_issuing_CA1.cer" location="sharedcert" key="true"/><file name="sharedcert:///DP_Shakedown.cer" src="sharedcert/DP_Shakedown.cer" location="sharedcert" key="true"/><file name="sharedcert:///ThawteTLS_RSA_CA_G1.cer" src="sharedcert/ThawteTLS_RSA_CA_G1.cer" location="sharedcert" key="true"/><file name="sharedcert:///Verisign-G4-intermediate.cer" src="sharedcert/Verisign-G4-intermediate.cer" location="sharedcert" key="true"/><file name="sharedcert:///Verisign-G5-root.cer" src="sharedcert/Verisign-G5-root.cer" location="sharedcert" key="true"/><file name="sharedcert:///Symantec_Class3_ Secure_Server_SHA256_SSL_CA.cer" src="sharedcert/Symantec_Class3_ Secure_Server_SHA256_SSL_CA.cer" location="sharedcert" key="true"/><file name="sharedcert:///Thawte_IntermediateCA.cer" src="sharedcert/Thawte_IntermediateCA.cer" location="sharedcert" key="true"/><file name="sharedcert:///DigiCert_Global_CA_G2.cer" src="sharedcert/DigiCert_Global_CA_G2.cer" location="sharedcert" key="true"/><file name="sharedcert:///BonRootCert.cer" src="sharedcert/BonRootCert.cer" location="sharedcert" key="true"/><file name="sharedcert:///COMODO_RSA_Organization_VSS_CA.cer" src="sharedcert/COMODO_RSA_Organization_VSS_CA.cer" location="sharedcert" key="true"/><file name="sharedcert:///Comodo.RSA.Certification.Authority.cer" src="sharedcert/Comodo.RSA.Certification.Authority.cer" location="sharedcert" key="true"/><file name="sharedcert:///gd_bundle_new.crt" src="sharedcert/gd_bundle_new.crt" location="sharedcert" key="true"/><file name="sharedcert:///DigiCertSHA2SecureServerCA_new.crt" src="sharedcert/DigiCertSHA2SecureServerCA_new.crt" location="sharedcert" key="true"/><file name="sharedcert:///DigiCertHighAssuranceEVRootCA.crt" src="sharedcert/DigiCertHighAssuranceEVRootCA.crt" location="sharedcert" key="true"/><file name="sharedcert:///GoogleInternetAuthorityG3.cer" src="sharedcert/GoogleInternetAuthorityG3.cer" location="sharedcert" key="true"/><file name="sharedcert:///GlobalSign.cer" src="sharedcert/GlobalSign.cer" location="sharedcert" key="true"/><file name="sharedcert:///DigiCert_SymCorintermediate_SHA2.cer.cer" src="sharedcert/DigiCert_SymCorintermediate_SHA2.cer.cer" location="sharedcert" key="true"/><file name="sharedcert:///thawte_SSL_CA_G2.crt" src="sharedcert/thawte_SSL_CA_G2.crt" location="sharedcert" key="true"/><file name="sharedcert:///entrust_L1K_2024_chain.crt" src="sharedcert/entrust_L1K_2024_chain.crt" location="sharedcert" key="true"/><file name="sharedcert:///entrust_L1Kchain.cer" src="sharedcert/entrust_L1Kchain.cer" location="sharedcert" key="true"/><file name="sharedcert:///Symantec_Class_3_Extended_Validation_SHA256_SSL_CA.cer" src="sharedcert/Symantec_Class_3_Extended_Validation_SHA256_SSL_CA.cer" location="sharedcert" key="true"/><file name="sharedcert:///BMOFG-Root2.cer" src="sharedcert/BMOFG-Root2.cer" location="sharedcert" key="true"/><file name="local:///dpcommon/xsl/bmo-transaction-log.xsl" src="local/dpcommon/xsl/bmo-transaction-log.xsl" location="local" hash="2hNGBWeR4lmY6i8S+HV8d7MQfAk="/><file name="local:///dpcommon/xsl/ClientOUIDAuth.xsl" src="local/dpcommon/xsl/ClientOUIDAuth.xsl" location="local" hash="KM053kctYJcMhtaT5M98j2xBEYA="/><file name="local:///mpg/AWSProxyMPG/@@SERVICE_NAME@@MPG/xsl/AWSEndpointForward.xsl" src="local/mpg/AWSProxyMPG/@@SERVICE_NAME@@MPG/xsl/AWSEndpointForward.xsl" location="local" hash="x58EZElJretPyIy8KG0LSZQCIGI="/><file name="local:///dpcommon/js/json_error_handling.js" src="local/dpcommon/js/json_error_handling.js" location="local" hash="DM+Rt9cof4vGlF3/mdg4KxymTzI="/><file name="webgui:///clixform.xsl" src="dp-aux/clixform.xsl" location="dp-aux" internal="true" hash="5D6rHcHlxffHkL6WqXFk5rM/MSw="/><file name="webgui:///SchemaUtil.xsl" src="dp-aux/SchemaUtil.xsl" location="dp-aux" internal="true" hash="ZnCYHBrcIPvfLAXYOIKIL0KXIbo="/><file name="webgui:///management.xsl" src="dp-aux/management.xsl" location="dp-aux" internal="true" hash="pi0c46mGrlbqTpsWjG3QUxFOCYU="/><file name="webgui:///map-dmz.xsl" src="dp-aux/map-dmz.xsl" location="dp-aux" internal="true" hash="S8LbpfukTeInHK2d6DnQfdiZmd4="/><file name="webgui:///drMgmt.xml" src="dp-aux/drMgmt.xml" location="dp-aux" internal="true" hash="6fYaKg4C6F9rrSHc5VotBh+DVXg="/><file name="webgui:///basetypes.xml" src="dp-aux/basetypes.xml" location="dp-aux" internal="true" hash="HrLsg2FhC6fPlGYI25NijeP828E="/></files></datapower-configuration>

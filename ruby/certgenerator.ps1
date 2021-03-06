$cert = New-SelfSignedCertificate -Type Custom -Subject "CN=5e0e87ea-67ac-4779-b6f7-30173b69112a,CN=a19881c3-d1f5-4f10-81dd-5a9ea0fe009c,OU=Windows Monitoring Agent,O=Microsoft" -KeyAlgorithm RSA -KeyLength 2048 -SmimeCapabilities -CertStoreLocation "cert:\localmachine\my"
$cert

$secPassword = ConvertTo-SecureString -String "passw0rd!" -Force -AsPlainText
$certPath = "Cert:\localMachine\my\$(cert.Thumbprint)"

Export-PfxCertificate -Cert $certPath -FilePath c:\selfcert.pfx -Password $secPassword
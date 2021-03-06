#Import-Module ([System.IO.Path]::Combine($PSScriptRoot, '../PSBouncyCastle/PSBouncyCastle.psm1')) -Global -Force -ErrorAction Stop

Write-Host "Generating  Agent GUID"

$AGENT_GUID=[guid]::NewGuid().Guid

# Write it to omsadmin.conf or set as environment variable or both
Write-Host "Agent Guid is: " $AGENT_GUID

$WORKSPACE_ID = "READ FROM SECRET LOCATION"

$WORKSPACE_KEY = "READ FROM SECRET LOCATION"

$KEY_FILE = New-Item . -Name "oms.key" -ItemType "file" -Value "put key in here!"
$CRT_FILE = New-Item . -Name "oms.crt" -ItemType "file" -Value "put crt in here!"


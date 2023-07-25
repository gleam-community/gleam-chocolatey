$ErrorActionPreference = "Stop"; # stop on all errors
$url64    = "https://github.com/gleam-lang/gleam/releases/download/v0.30.3/gleam-v0.30.3-x86_64-pc-windows-msvc.zip"
$checksum = "f340d3c81a401420857251d46538f7eb9ac563e385a4ae1c2c03fbd26f791850aaf0b38a3ad708fc11159fa2420e6f111cdd207fb832815ea7bd230d139219ee"

Install-ChocolateyZipPackage `
  -PackageName "Gleam" `
  -Url64Bit $url64 `
  -UnzipLocation "$(Split-Path -Parent $MyInvocation.MyCommand.Definition)" `
  -Checksum64 $checksum `
  -ChecksumType64 "sha512" `

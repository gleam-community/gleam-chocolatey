$ErrorActionPreference = 'Stop'; # stop on all errors
$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url64      = 'https://github.com/gleam-lang/gleam/releases/download/v0.21.0/gleam-v0.21.0-windows-64bit.zip'
$urlChecksum = 'https://github.com/gleam-lang/gleam/releases/download/v0.21.0/gleam-v0.21.0-windows-64bit.zip.sha512'

Get-WebFile `
  -Url $urlChecksum `
  -FileName "$toolsDir/v0.21.0-checksum.sha512" `
  -Quiet

$checksum = Get-Content "$toolsDir/v0.21.0-checksum.sha512" -Raw
$checksum = $checksum.Split("*")[0]
$checksum = $checksum.Trim()

Install-ChocolateyZipPackage `
  -PackageName "Gleam" `
  -Url64Bit $url64 `
  -UnzipLocation "$(Split-Path -Parent $MyInvocation.MyCommand.Definition)" `
  -Checksum64 $checksum `
  -ChecksumType64 "sha512" `

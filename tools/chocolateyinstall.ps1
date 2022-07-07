$ErrorActionPreference = 'Stop'; # stop on all errors
$url64      = 'https://github.com/gleam-lang/gleam/releases/download/v0.22.1/gleam-v0.22.1-windows-64bit.zip'

$checksum = "2c8f706e0a5cd6be5a23a0a532204289ade6e257054994ba54547df0211a399fd303362bd22331014363000c950d6e51e5674e8f5390b662586a76118475cb15"

Install-ChocolateyZipPackage `
  -PackageName "Gleam" `
  -Url64Bit $url64 `
  -UnzipLocation "$(Split-Path -Parent $MyInvocation.MyCommand.Definition)" `
  -Checksum64 $checksum `
  -ChecksumType64 "sha512" `

$ErrorActionPreference = 'Stop'; # stop on all errors
$url64      = 'https://github.com/gleam-lang/gleam/releases/download/v0.25.0/gleam-v0.25.0-x86_64-pc-windows-msvc.zip'

$checksum = "52462a69b98c9ee3a8c4cf932cab14dbec9bde103a8285b65b9af3e28397fe3896519ae837bb1d0259cadf544970363fdafdc80f88a5600f12d5528f8b781d32"

Install-ChocolateyZipPackage `
  -PackageName "Gleam" `
  -Url64Bit $url64 `
  -UnzipLocation "$(Split-Path -Parent $MyInvocation.MyCommand.Definition)" `
  -Checksum64 $checksum `
  -ChecksumType64 "sha512" `

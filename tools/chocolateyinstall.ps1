$ErrorActionPreference = "Stop"; # stop on all errors
$url64    = "https://github.com/gleam-lang/gleam/releases/download/v0.27.0/gleam-v0.27.0-x86_64-pc-windows-msvc.zip"
$checksum = "2efdef80f649aa88c9639fa416bd2d97bdfc029375fad34f3ed9468adf858f939c5c7f881e387f48ca110da89b3fd208eeec1f5b35172806610f62d50065ae72"

Install-ChocolateyZipPackage `
  -PackageName "Gleam" `
  -Url64Bit $url64 `
  -UnzipLocation "$(Split-Path -Parent $MyInvocation.MyCommand.Definition)" `
  -Checksum64 $checksum `
  -ChecksumType64 "sha512" `

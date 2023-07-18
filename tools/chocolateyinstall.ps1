$ErrorActionPreference = "Stop"; # stop on all errors
$url64    = "https://github.com/gleam-lang/gleam/releases/download/v0.30.1/gleam-v0.30.1-x86_64-pc-windows-msvc.zip"
$checksum = "97bc4cf9fa5c22695c75c163ea78bace28cc8d953ca62ca39441d6f26658594b88594b0450754a2e47de162858ae361ac3024134152c795391fef5c59e12c64c"

Install-ChocolateyZipPackage `
  -PackageName "Gleam" `
  -Url64Bit $url64 `
  -UnzipLocation "$(Split-Path -Parent $MyInvocation.MyCommand.Definition)" `
  -Checksum64 $checksum `
  -ChecksumType64 "sha512" `

$ErrorActionPreference = "Stop"; # stop on all errors
$url64    = "https://github.com/gleam-lang/gleam/releases/download/v0.32.1/gleam-v0.32.1-x86_64-pc-windows-msvc.zip"
# Taken from https://github.com/gleam-lang/gleam/releases/download/v0.32.1/gleam-v0.32.1-x86_64-pc-windows-msvc.zip.sha512
$checksum = "7059d8955fb55976b916817d87109b70f14ada8ca3f240f4d182618347809f8335bfdcd4a2802c4d9c142b19e12dc83e206d9ab8b93979fa2c58129610ab1c59"

Install-ChocolateyZipPackage `
  -PackageName "Gleam" `
  -Url64Bit $url64 `
  -UnzipLocation "$(Split-Path -Parent $MyInvocation.MyCommand.Definition)" `
  -Checksum64 $checksum `
  -ChecksumType64 "sha512" `

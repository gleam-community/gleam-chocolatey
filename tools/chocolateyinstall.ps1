$ErrorActionPreference = "Stop"; # stop on all errors
$url64    = "https://github.com/gleam-lang/gleam/releases/download/v1.0.0/gleam-v1.0.0-x86_64-pc-windows-msvc.zip"
# Taken from https://github.com/gleam-lang/gleam/releases/download/v1.0.0/gleam-v1.0.0-x86_64-pc-windows-msvc.zip.sha512
$checksum = "bf57c6232b2b719937f73a2e68a24b7ed11d81eb7f6303af0dfbc97d4413604bd624727579db6c4db4e5b609e55b1a1d0749926aaebc7d42027a60f68b82ff18"

Install-ChocolateyZipPackage `
  -PackageName "Gleam" `
  -Url64Bit $url64 `
  -UnzipLocation "$(Split-Path -Parent $MyInvocation.MyCommand.Definition)" `
  -Checksum64 $checksum `
  -ChecksumType64 "sha512" `

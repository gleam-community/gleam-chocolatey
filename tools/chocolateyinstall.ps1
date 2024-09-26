$ErrorActionPreference = "Stop"; # stop on all errors
$url64    = "https://github.com/gleam-lang/gleam/releases/download/v1.5.1/gleam-v1.5.1-x86_64-pc-windows-msvc.zip"
# Taken from https://github.com/gleam-lang/gleam/releases/download/v1.5.1/gleam-v1.5.1-x86_64-pc-windows-msvc.zip.sha512
$checksum = "f16d286c74ea3a01ada1da0a0b46717bada31d8b0b26e4c9b282744ecdde819e861c0af8ce31dac5637bca7d2d02084a5a37838cd93f97b7abe03374fb6a7b5a"

Install-ChocolateyZipPackage `
  -PackageName "Gleam" `
  -Url64Bit $url64 `
  -UnzipLocation "$(Split-Path -Parent $MyInvocation.MyCommand.Definition)" `
  -Checksum64 $checksum `
  -ChecksumType64 "sha512" `

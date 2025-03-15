$ErrorActionPreference = "Stop"; # stop on all errors
$url64    = "https://github.com/gleam-lang/gleam/releases/download/v1.9.1/gleam-v1.9.1-x86_64-pc-windows-msvc.zip"
# Taken from https://github.com/gleam-lang/gleam/releases/download/v1.9.1/gleam-v1.9.1-x86_64-pc-windows-msvc.zip.sha512
$checksum = "30ef1be793eed21bab57444e677f87f4dfd81af6054f5141d6790eac140e62d1bf09fc6205659d89da55763a7262ccb341b719a9d0d3d787ac017f0e1187858c"

Install-ChocolateyZipPackage `
  -PackageName "Gleam" `
  -Url64Bit $url64 `
  -UnzipLocation "$(Split-Path -Parent $MyInvocation.MyCommand.Definition)" `
  -Checksum64 $checksum `
  -ChecksumType64 "sha512" `

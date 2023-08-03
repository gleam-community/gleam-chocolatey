$ErrorActionPreference = "Stop"; # stop on all errors
$url64    = "https://github.com/gleam-lang/gleam/releases/download/v0.30.5/gleam-v0.30.5-x86_64-pc-windows-msvc.zip"
# Taken from https://github.com/gleam-lang/gleam/releases/download/v0.30.5/gleam-v0.30.5-x86_64-pc-windows-msvc.zip.sha512
$checksum = "810079649d7e4b81124d5177360f84a0d9d6d0d1eb928e5954f8fd854f52804810085347bfac119c281f125ffabeeb38df9f46b184a8b8a983855b2d2aa328f9"

Install-ChocolateyZipPackage `
  -PackageName "Gleam" `
  -Url64Bit $url64 `
  -UnzipLocation "$(Split-Path -Parent $MyInvocation.MyCommand.Definition)" `
  -Checksum64 $checksum `
  -ChecksumType64 "sha512" `

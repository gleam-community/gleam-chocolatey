$ErrorActionPreference = "Stop"; # stop on all errors
$url64    = "https://github.com/gleam-lang/gleam/releases/download/v0.31.0/gleam-v0.31.0-x86_64-pc-windows-msvc.zip"
# Taken from https://github.com/gleam-lang/gleam/releases/download/v0.31.0/gleam-v0.31.0-x86_64-pc-windows-msvc.zip.sha512
$checksum = "a3f6adaa8a6ee8b1d5a2bddef2b9afccbe4da12e5701853d137774537fe423199fd8d32fa04d346cb2ef90e4011c17709b3bcbea9138bf74aed09c9145d21135"

Install-ChocolateyZipPackage `
  -PackageName "Gleam" `
  -Url64Bit $url64 `
  -UnzipLocation "$(Split-Path -Parent $MyInvocation.MyCommand.Definition)" `
  -Checksum64 $checksum `
  -ChecksumType64 "sha512" `

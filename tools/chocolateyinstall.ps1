$ErrorActionPreference = "Stop"; # stop on all errors
$url64    = "https://github.com/gleam-lang/gleam/releases/download/v1.4.1/gleam-v1.4.1-x86_64-pc-windows-msvc.zip"
# Taken from https://github.com/gleam-lang/gleam/releases/download/v1.4.1/gleam-v1.4.1-x86_64-pc-windows-msvc.zip.sha512
$checksum = "469a355f65e2e9e401c249af9a97400404f76c350d6db13db9dcd4f083153b52c2db53559c757404218d0f6edb6d612fd626a9b57b439933d3dbe0a8fc792a84"

Install-ChocolateyZipPackage `
  -PackageName "Gleam" `
  -Url64Bit $url64 `
  -UnzipLocation "$(Split-Path -Parent $MyInvocation.MyCommand.Definition)" `
  -Checksum64 $checksum `
  -ChecksumType64 "sha512" `

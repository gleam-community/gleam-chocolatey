$ErrorActionPreference = "Stop"; # stop on all errors
$url64    = "https://github.com/gleam-lang/gleam/releases/download/v0.32.3/gleam-v0.32.3-x86_64-pc-windows-msvc.zip"
# Taken from https://github.com/gleam-lang/gleam/releases/download/v0.32.3/gleam-v0.32.3-x86_64-pc-windows-msvc.zip.sha512
$checksum = "57b21a1a75d6725784f983decd7479efe99014953e724c28487788ff12f6638037b5f0daf456860dd1987b32416bdb6b78499f744338abcee5b390845b4b10dd"

Install-ChocolateyZipPackage `
  -PackageName "Gleam" `
  -Url64Bit $url64 `
  -UnzipLocation "$(Split-Path -Parent $MyInvocation.MyCommand.Definition)" `
  -Checksum64 $checksum `
  -ChecksumType64 "sha512" `

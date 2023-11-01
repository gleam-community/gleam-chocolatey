$ErrorActionPreference = "Stop"; # stop on all errors
$url64    = "https://github.com/gleam-lang/gleam/releases/download/v0.32.0/gleam-v0.32.0-x86_64-pc-windows-msvc.zip"
# Taken from https://github.com/gleam-lang/gleam/releases/download/v0.32.0/gleam-v0.32.0-x86_64-pc-windows-msvc.zip.sha512
$checksum = "37199ab2af205661e30a323eea09757661813b4fcb62ebd9956ead9d9fc98bbdda42e494157eac08a30f2b350ba81bb20a7f01cd8128309e71d01ca57840f0b4"

Install-ChocolateyZipPackage `
  -PackageName "Gleam" `
  -Url64Bit $url64 `
  -UnzipLocation "$(Split-Path -Parent $MyInvocation.MyCommand.Definition)" `
  -Checksum64 $checksum `
  -ChecksumType64 "sha512" `

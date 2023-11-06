$ErrorActionPreference = "Stop"; # stop on all errors
$url64    = "https://github.com/gleam-lang/gleam/releases/download/v0.32.2/gleam-v0.32.2-x86_64-pc-windows-msvc.zip"
# Taken from https://github.com/gleam-lang/gleam/releases/download/v0.32.2/gleam-v0.32.2-x86_64-pc-windows-msvc.zip.sha512
$checksum = "266a73dcc1367db35b82ba1cfa394af41979ffd958b69c602b113adb7451ded792024e54982085e0328b0c60da46a039293020e1dc1e1a702be56d053767070c"

Install-ChocolateyZipPackage `
  -PackageName "Gleam" `
  -Url64Bit $url64 `
  -UnzipLocation "$(Split-Path -Parent $MyInvocation.MyCommand.Definition)" `
  -Checksum64 $checksum `
  -ChecksumType64 "sha512" `

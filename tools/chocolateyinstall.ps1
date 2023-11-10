$ErrorActionPreference = "Stop"; # stop on all errors
$url64    = "https://github.com/gleam-lang/gleam/releases/download/v0.32.4/gleam-v0.32.4-x86_64-pc-windows-msvc.zip"
# Taken from https://github.com/gleam-lang/gleam/releases/download/v0.32.4/gleam-v0.32.4-x86_64-pc-windows-msvc.zip.sha512
$checksum = "63ac8f296f20efa7c55e5449060199986840617ff7cb29453ef17e55ea03568200fc13514b4cfb4983ffb16ce010b4a8ce41738379e503b6bb109bd661ac4d17"

Install-ChocolateyZipPackage `
  -PackageName "Gleam" `
  -Url64Bit $url64 `
  -UnzipLocation "$(Split-Path -Parent $MyInvocation.MyCommand.Definition)" `
  -Checksum64 $checksum `
  -ChecksumType64 "sha512" `

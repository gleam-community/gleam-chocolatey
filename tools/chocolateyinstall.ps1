$ErrorActionPreference = "Stop"; # stop on all errors
$url64    = "https://github.com/gleam-lang/gleam/releases/download/v1.6.2/gleam-v1.6.2-x86_64-pc-windows-msvc.zip"
# Taken from https://github.com/gleam-lang/gleam/releases/download/v1.6.2/gleam-v1.6.2-x86_64-pc-windows-msvc.zip.sha512
$checksum = "183c3df2a3ba4366068e1f21a80250f6826c6767db99f9d76d0aeb733d9c019ee99192705f45ee7171da575c88263f5006f071a77812b8df2860188c0a8f37a6"

Install-ChocolateyZipPackage `
  -PackageName "Gleam" `
  -Url64Bit $url64 `
  -UnzipLocation "$(Split-Path -Parent $MyInvocation.MyCommand.Definition)" `
  -Checksum64 $checksum `
  -ChecksumType64 "sha512" `

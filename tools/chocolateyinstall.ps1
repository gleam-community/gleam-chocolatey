$ErrorActionPreference = 'Stop'; # stop on all errors
$url64      = 'https://github.com/gleam-lang/gleam/releases/download/v0.24.0/gleam-v0.24.0-x86_64-pc-windows-msvc.zip'

$checksum = "fdf4947c10f5e7ed7c961400fbb824a49609c1f86350abb98f8dca6cb546a1c87b145807d04abf7bf92a3a7521f918fd4c539186a42091bdb837e1d400f0d625"

Install-ChocolateyZipPackage `
  -PackageName "Gleam" `
  -Url64Bit $url64 `
  -UnzipLocation "$(Split-Path -Parent $MyInvocation.MyCommand.Definition)" `
  -Checksum64 $checksum `
  -ChecksumType64 "sha512" `

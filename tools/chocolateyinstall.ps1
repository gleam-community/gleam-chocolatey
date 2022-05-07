$ErrorActionPreference = 'Stop'; # stop on all errors
$url64      = 'https://github.com/gleam-lang/gleam/releases/download/v0.21.0/gleam-v0.21.0-windows-64bit.zip'

$checksum = "01a1bd3422738415f96589bc3e1e5adeeddb7ae3815aea0014995c42e72199d5e1e78698678450072ed9b31abe0983b409a86d023dd21e11fe43cc42999463e6"

Install-ChocolateyZipPackage `
  -PackageName "Gleam" `
  -Url64Bit $url64 `
  -UnzipLocation "$(Split-Path -Parent $MyInvocation.MyCommand.Definition)" `
  -Checksum64 $checksum `
  -ChecksumType64 "sha512" `

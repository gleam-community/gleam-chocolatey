$ErrorActionPreference = 'Stop'; # stop on all errors
$url64      = 'https://github.com/gleam-lang/gleam/releases/download/v0.22.0/gleam-v0.22.0-windows-64bit.zip'

$checksum = "fe94fd3e895812f7341d267fa83a4f5fc52dd6b3d7403fee4e0aafb6f2561fbb91678cc10167e14afe488fdaa41237ab531a0bd217b176c8d24c8da50f90cbe7"

Install-ChocolateyZipPackage `
  -PackageName "Gleam" `
  -Url64Bit $url64 `
  -UnzipLocation "$(Split-Path -Parent $MyInvocation.MyCommand.Definition)" `
  -Checksum64 $checksum `
  -ChecksumType64 "sha512" `

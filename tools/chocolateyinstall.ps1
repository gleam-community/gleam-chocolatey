$ErrorActionPreference = "Stop"; # stop on all errors
$url64    = "https://github.com/gleam-lang/gleam/releases/download/v0.33.0/gleam-v0.33.0-x86_64-pc-windows-msvc.zip"
# Taken from https://github.com/gleam-lang/gleam/releases/download/v0.33.0/gleam-v0.33.0-x86_64-pc-windows-msvc.zip.sha512
$checksum = "76b6b3715f1740371b00be0c65ed5bfeaa3f2ec2f15d57969f20443759bd0fcdef0b9e3f2acfde70114cf58e63e9793fb1091ee5cc10c98463f64d7d06b8494e"

Install-ChocolateyZipPackage `
  -PackageName "Gleam" `
  -Url64Bit $url64 `
  -UnzipLocation "$(Split-Path -Parent $MyInvocation.MyCommand.Definition)" `
  -Checksum64 $checksum `
  -ChecksumType64 "sha512" `

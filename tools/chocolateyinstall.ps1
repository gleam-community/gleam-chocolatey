$ErrorActionPreference = "Stop"; # stop on all errors
$url64    = "https://github.com/gleam-lang/gleam/releases/download/v1.5.0/gleam-v1.5.0-x86_64-pc-windows-msvc.zip"
# Taken from https://github.com/gleam-lang/gleam/releases/download/v1.5.0/gleam-v1.5.0-x86_64-pc-windows-msvc.zip.sha512
$checksum = "c79b976e9686a0d98274d7e5731c14b207bb87d627774f7cae77a48ec080cc9f7179f5c5e1a6ef16f0e3cc8382d524fd44de3541ee7b27f561c9f35b4a3a05dd"

Install-ChocolateyZipPackage `
  -PackageName "Gleam" `
  -Url64Bit $url64 `
  -UnzipLocation "$(Split-Path -Parent $MyInvocation.MyCommand.Definition)" `
  -Checksum64 $checksum `
  -ChecksumType64 "sha512" `

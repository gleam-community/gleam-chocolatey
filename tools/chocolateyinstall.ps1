$ErrorActionPreference = "Stop"; # stop on all errors
$url64    = "https://github.com/gleam-lang/gleam/releases/download/v0.29.0/gleam-v0.29.0-x86_64-pc-windows-msvc.zip"
$checksum = "8cc092feda54a6a6b1152749bac14f3ca935f17ac332371113eebe748786df492a8ad11deee2173cc16913836e6600a5a6f7f94abcaa02b1e7f85078f7f8085c"

Install-ChocolateyZipPackage `
  -PackageName "Gleam" `
  -Url64Bit $url64 `
  -UnzipLocation "$(Split-Path -Parent $MyInvocation.MyCommand.Definition)" `
  -Checksum64 $checksum `
  -ChecksumType64 "sha512" `

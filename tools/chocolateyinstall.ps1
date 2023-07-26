$ErrorActionPreference = "Stop"; # stop on all errors
$url64    = "https://github.com/gleam-lang/gleam/releases/download/v0.30.4/gleam-v0.30.4-x86_64-pc-windows-msvc.zip"
$checksum = "c5a592afc081019ea3e2a888608c584312f793305f559fe413997cab27bc4a6801e5d8455a3320a201c1fe414b743077cec7c4ce3399ad3ac8c690c0a8e1ef80"

Install-ChocolateyZipPackage `
  -PackageName "Gleam" `
  -Url64Bit $url64 `
  -UnzipLocation "$(Split-Path -Parent $MyInvocation.MyCommand.Definition)" `
  -Checksum64 $checksum `
  -ChecksumType64 "sha512" `

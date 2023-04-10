$ErrorActionPreference = "Stop"; # stop on all errors
$url64    = "https://github.com/gleam-lang/gleam/releases/download/v0.28.2/gleam-v0.28.2-x86_64-pc-windows-msvc.zip"
$checksum = "b49a6e787cf28583771bb46e937c1fe3f5c9deb3a36e1f2e54d65ca3f7d3cf4d9005a83c2b3b6f83763afb9fef4851f0c909c2dc3a06b979b18aa1064e967d3f"

Install-ChocolateyZipPackage `
  -PackageName "Gleam" `
  -Url64Bit $url64 `
  -UnzipLocation "$(Split-Path -Parent $MyInvocation.MyCommand.Definition)" `
  -Checksum64 $checksum `
  -ChecksumType64 "sha512" `

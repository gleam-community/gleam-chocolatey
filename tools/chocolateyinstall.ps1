$ErrorActionPreference = 'Stop'; # stop on all errors
$url64      = 'https://github.com/gleam-lang/gleam/releases/download/v0.26.2/gleam-v0.26.2-x86_64-pc-windows-msvc.zip'

$checksum = "9cb57bed019b6be5c3957ee8640f62eb795a0df98ce44e92adb685db4cc8d5f072d774b992dc0514ca5058221007026e7321f349447503011c7bab6d5fc82a94"

Install-ChocolateyZipPackage `
  -PackageName "Gleam" `
  -Url64Bit $url64 `
  -UnzipLocation "$(Split-Path -Parent $MyInvocation.MyCommand.Definition)" `
  -Checksum64 $checksum `
  -ChecksumType64 "sha512" `

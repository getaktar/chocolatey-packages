$ErrorActionPreference = 'Stop'

$packageArgs = @{
  packageName    = $env:ChocolateyPackageName
  fileType       = 'exe'
  url64bit       = 'https://github.com/getaktar/desktop/releases/download/v0.16.1/Aktar_0.16.1_x64-setup.exe'
  checksum64     = 'd4f755a6e2cff43dc479d983ccbbae47fab7167a823250751a56f7f980aa47d2'
  checksumType64 = 'sha256'
  silentArgs     = '/S'
  validExitCodes = @(0)
  softwareName   = 'Aktar'
}

Install-ChocolateyPackage @packageArgs

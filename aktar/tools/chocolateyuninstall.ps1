$ErrorActionPreference = 'Stop'

[array]$keys = Get-UninstallRegistryKey -SoftwareName 'Aktar'
foreach ($key in $keys) {
  $uninstaller = $key.UninstallString -replace '"', ''
  if (Test-Path $uninstaller) {
    Uninstall-ChocolateyPackage -PackageName $env:ChocolateyPackageName -FileType 'exe' -SilentArgs '/S' -File $uninstaller -ValidExitCodes @(0)
  }
}

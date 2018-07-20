$ErrorActionPreference = 'Stop';

$packageName= 'notepadplusplus'
$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$fileLocation = Join-Path $toolsDir 'npp.7.5.7.Installer.exe'

$packageArgs = @{
  packageName   = $packageName
  fileType      = 'exe'
  file         = $fileLocation

  silentArgs    = "/S"
  validExitCodes= @(0)
}

Install-ChocolateyInstallPackage @packageArgs

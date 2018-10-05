param([Parameter(Mandatory=$true)] [string]$username, [string]$path, [string]$name)

$pathofnewdir = $path+'/'+$name

Grant-AccessOnCatalogItem -Identity $username -RoleName 'Browser' -Path $pathofnewdir -ReportServerUri 'INSERT YOUR SERVER URI'

param([Parameter(Mandatory=$true)] [string]$username, [string]$path, [string]$name)

$pathofnewdir = $path+'/'+$name

Revoke-RsCatalogItemAccess -Identity $username -Path $pathofnewdir -ReportServerUri 'INSERT YOUR SERVER URI HERE'

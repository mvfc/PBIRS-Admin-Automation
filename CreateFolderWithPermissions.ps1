param([string]$username, [string]$path, [string]$name)
$instance = dbinstance
$db = reportserver
$query = 'exec sp_make_new_dir @DIRNAME = "'+$name+'", @DIRPATH = "'+$path+'", @USERNAME = "'+$username+'"'



Invoke-SqlCmd -ServerInstance $instance -Database $db -Query $query

$pathofnewdir = $path+'/'+$name

Grant-AccessOnCatalogItem -Identity $username -RoleName 'Content Manager' -Path $pathofnewdir -ReportServerUri 'http://localhost/reportserver'

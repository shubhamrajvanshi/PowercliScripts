$server = Read-Host "Enter vCenter Server IP/name"
Connect-VIServer -Server $server 
$datacenter = Get-Datacenter
#$datastores= Get-Datastore -Name nfs*| ? {$_.name -notin ("nfs1teamodd","nfs2teameven")} | Sort-Object name
$datastores= Get-Datastore -Name nfs*| ? {$_.name -in ("nfs1teamodd","nfs2teameven")} | Sort-Object name
foreach ($ds in $datastores)
{
  Write-Host "Deleting data from vmstore:\$datacenter\$ds"
  #Get-ChildItem "vmstore:\$datacenter\$ds" | ?{ $_.name -notlike "__DEPLOY_VHOST__"} | Remove-Item -Force -Recurse -Confirm:$false
  Get-ChildItem "vmstore:\$datacenter\$ds" | ?{ $_.name -like "T*"} | Remove-Item -Force -Recurse -Confirm:$false -ErrorAction SilentlyContinue
   Write-Host 
   }

   
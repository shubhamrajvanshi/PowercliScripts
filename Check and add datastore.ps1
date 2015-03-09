$esxhosts = Get-VMHost #Get-Content -Path C:\283Lab\14esxservers.txt
# Check Datastore 
foreach ($esxhost in $esxhosts)
{
    #Connect-VIServer $esxhost
    Get-Datastore -Server $esxhost | ? {$_.type -eq "NFS"} | Select-Object name,remotehost, remotepath,type
    #Remove Datastore $esxhost
    #Remove-Datastore -Datastore team99 -Server $esxhost
}

#Add a Datastore
foreach ($esxhost in $esxhosts)
{
    New-Datastore -VMHost $esxhost -Name team99 -Nfs -Path "/shares/team99" -NfsHost cumulus5.sjsu.edu
}

#Remove a Datastore
foreach ($esxhost in $esxhosts)
{
    Remove-Datastore -VMHost ($esxhost+".sjsu.edu") -Datastore team99 -RunAsync -Confirm:$false
}
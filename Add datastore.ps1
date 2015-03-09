Get-VMHost | New-Datastore -Name nfs3heartbeat18a -Nfs -Path "/shares/nfs3heartbeat18a" -NfsHost 130.65.132.58
Get-VMHost | New-Datastore -Name nfs3heartbeat18b -Nfs -Path "/shares/nfs3heartbeat18b" -NfsHost 130.65.132.58
Get-VMHost | New-Datastore -Name nfs4heartbeat18a -Nfs -Path "/shares/nfs4heartbeat18a" -NfsHost 130.65.132.59
Get-VMHost | New-Datastore -Name nfs4heartbeat18b -Nfs -Path "/shares/nfs4heartbeat18b" -NfsHost 130.65.132.59


Get-VMHost 130.65.133.210| New-Datastore -Name nfs3team18 -Nfs -Path "/shares/nfs3team18" -NfsHost 130.65.132.58

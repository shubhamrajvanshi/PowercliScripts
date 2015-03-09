$esxservers= Get-Content C:\283Lab\19esxservers.txt
foreach($esxserver in $esxservers)
{
    New-Datastore -VMHost $esxserver -Name nfs3team99 -nfs -path "/shares/nfs3team99" -NfsHost 130.65.132.58
    New-Datastore -VMHost $esxserver -Name nfs4team99 -nfs -path "/shares/nfs4team99" -NfsHost 130.65.132.59
    
    }
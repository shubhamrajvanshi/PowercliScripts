$esxhosts = Get-Content -Path C:\283Lab\19esxservers.txt
foreach ($esxhost in $esxhosts)
{ 
 #Connect-VIServer -Server $esxhost -User root -Password 12!@qwQW -SaveCredentials
 #Write-Host $esxhost + " is now Connected"
 Get-VMHostNetworkAdapter -Server $esxhost | Where {$_.DeviceName -match '^vmk'} |
Format-Table Name,Portgroupname,IP,Faulttoleranceloggingenabled,managementtrafficenabled,vmotionenabled,vsantrafficenabled 

#Get-VMHostNetworkAdapter -Server $esxhost | Set-VMHostNetworkAdapter -VMotionEnabled $true


 }
 foreach ($esxhost in $esxhosts)
{ 
 Get-VMHost | Get-VMHostAdvancedConfiguration -Name NFS.MaxVolumes 
 Get-VMHost | Set-VMHostAdvancedConfiguration  -Name NFS.MaxVolumes -Value 32 

 }
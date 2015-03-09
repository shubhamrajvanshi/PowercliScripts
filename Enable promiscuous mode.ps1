 $esxhosts = Get-Content C:\283Lab\esxservers.txt
 
 # Get the status of Promiscuous Mode
 foreach($esxhost in $esxhosts)
 {
    Get-VirtualPortGroup -VMHost $esxhosts -Name VM* | Get-SecurityPolicy
 }
 # Set the status of Promiscuous Mode to true
 foreach($esxhost in $esxhosts)
 {
    Get-VirtualPortGroup -VMHost cumulus1 -Name VM* | Get-SecurityPolicy | Set-SecurityPolicy -AllowPromiscuous $true
 }
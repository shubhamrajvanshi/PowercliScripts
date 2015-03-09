Get-VM | Stop-VM -Confirm:$false
Get-VMHost | Set-VMHost -State Maintenance| Remove-VMHost -Confirm:$false
Get-Cluster | Remove-Cluster -Confirm:$false
Get-Datacenter | Remove-Datacenter -Confirm:$false 
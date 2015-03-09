$esxhosts = Get-Content -Path C:\283Lab\esxservers.txt
foreach ($esxhost in $esxhosts)
{
#Get-VMHostNtpServer -VMHost $esxhosts
Add-VmHostNtpServer -VMHost $esxhost -NtpServer pool.ntp.org
Get-VmHostService -VMHost $esxhost | Where-Object {$_.key -eq "ntpd"} | Start-VMHostService
Get-VmHostService -VMHost $esxhost | Where-Object {$_.key -eq "ntpd"} | Set-VMHostService -policy "automatic"

}
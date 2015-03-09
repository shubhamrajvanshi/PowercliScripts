Get-Folder -NoRecursion | New-Datacenter  -Name CMPE283 -ErrorAction SilentlyContinue
$hostlocation = Get-Folder | ?{$_.name -eq 'host'}
$esxhosts= Get-Content C:\283Lab\14esxservers.txt
foreach ($esxhost in $esxhosts)
{
    Add-VMHost -Name ($esxhost+'.sjsu.edu') -User root -Password 'password' -Location $hostlocation -Confirm:$false -Force -ErrorAction SilentlyContinue 
    }
        

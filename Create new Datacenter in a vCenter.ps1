$dc = Read-Host "Enter the name of the new datacenter to be created"
if(($global:DefaultVIServers.Count -gt 1 ))
{
    $vcenter = Read-Host "Enter the name of vCenter where Datacenter needs to be created"
    Get-Folder -NoRecursion -Server $vcenter | New-Datacenter  -Name $dc  
    }
    else {
    Get-Folder -NoRecursion | New-Datacenter  -Name $dc 
    }

$vcenter = Read-Host "Enter vCenter to connect to"
if(($global:DefaultVIServers.Count -eq 0) -or ($vcenter -notin $global:DefaultVIServers.name ))
{
        $user = Read-Host "Enter username to connect to vCenter $vcenter"
        $cred = Get-Credential -UserName $user -Message "Enter password"
   
        Connect-VIServer $vcenter -Credential $cred 
        
   
    }
    else
    {
    Write-Host "Already connected to server $vcenter"
    }
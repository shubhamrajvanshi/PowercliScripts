$esxservers= get-content C:\283Lab\esxservers.txt
foreach ($esxserver in $esxservers)
{
    Connect-VIServer -Server $esxserver -User root -Password '12!@qwQW' -SaveCredentials
    Write-Host "Restarting host" + $esxserver    
    Restart-VMHost -VMHost $esxserver -Force 
    start-sleep -Seconds 10
    while( (Test-Connection -ComputerName $esxserver -Count 2 -Quiet) -eq $true)
    {
        Write-Host "Waiting for the host $esxserver to Reboot"
        Start-Sleep -Seconds 10
    }


}
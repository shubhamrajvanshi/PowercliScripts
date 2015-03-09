$esxhosts = Read-Host "Enter Host to be added to the datacenter"
Add-VMHost -Name $esxhosts -Location T24-DC -Force 
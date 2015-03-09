﻿Get-View  -ViewType hostsystem -Property name,runtime.boottime | Select-Object Name, @{N="BootTime"; E={($_.runtime).BootTime}} , @{N="Time"; E={(Get-date).ToUniversalTime()}} | Sort-Object boottime -Descending
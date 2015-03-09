Get-VMHostService -VMHost cumulus8 | Where { $_.Key -in "TSM-SSH","TSM" } |select VMHost, Label, Running


Get-VMHostService -VMHost cumulus8 | Where { $_.Key -eq "TSM-SSH" } | Start-VMHostService 
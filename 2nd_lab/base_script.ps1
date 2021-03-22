Invoke-Command -ComputerName 10.0.0.1, 10.0.0.2 -ScriptBlock {Install-WindowsFeature -Name "DHCP" -IncludeManagementTools}
Invoke-Command -ComputerName 10.0.0.1 -FilePath c:\dhcp_remote_script\script.ps1

Rename-Computer -newName s2
New-NetIPAddress -InterfaceIndex 6 -IPAddress 10.0.0.2
Set-NetIPAddress -InterfaceIndex 6 -IPAddress 10.0.0.2 -PrefixLength 8
Disable-NetAdapterBinding -Name "Ethernet" -ComponentID ms_tcpip6

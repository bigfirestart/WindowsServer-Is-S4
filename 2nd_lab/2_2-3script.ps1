Rename-Computer -NewName s1
New-NetIPAddress -InterfaceIndex 6 -IPAddress 10.0.0.1
Set-NetIPAddress -InterfaceIndex 6 -IPAddress 10.0.0.1 -PrefixLength 8
Disable-NetAdapterBinding -Name "Ethernet" -ComponentID ms_tcpip6


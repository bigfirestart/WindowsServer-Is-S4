Rename-Computer -NewName c1
Disable-NetAdapterBinding -Name "Ethernet" -ComponentID ms_tcpip6
netsh interface ip set address "Ethernet" dhcp
netsh interface ip set dns "Ethernet" dhcp
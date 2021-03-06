$mode = Read-Host "Choose the mode"

if ($mode -eq "Manual") {
	netsh interface ipv4 set dns name="Ethernet" static 8.8.8.8
	netsh interface ipv4 set address name="Ethernet" static 192.168.1.10 255.255.255.0 192.168.1.1 
} else {
	netsh interface ip set address "Ethernet" dhcp
	netsh interface ip set dns "Ethernet" dhcp
}

pause
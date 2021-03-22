Add-DhcpServerv4Scope -Name "Local DHCP" -StartRange 10.0.0.100 -EndRange 10.0.0.200 -SubnetMask 255.0.0.0
Add-DhcpServerv4ExclusionRange -ScopeID 10.0.0.0 -StartRange 10.0.0.195 -EndRange 10.0.0.200
Set-DhcpServerv4OptionValue -DnsDomain KDA.loc -DnsServer 10.10.10.10 -Router 10.10.10.10 -Force
Set-DhcpServerv4Scope -ScopeId 10.0.0.0 -LeaseDuration 01:00:00
Add-DhcpServerv4Failover -ComputerName 10.0.0.1 -Name "s1-s2" -PartnerServer 10.0.0.2 -ScopeId 10.0.0.0 -ReservePercent 35 -MaxClientLeadTime 00:30:00 -AutoStateTransition $true -StateSwitchInterval 00:01:00 -SharedSecret "123" -Force

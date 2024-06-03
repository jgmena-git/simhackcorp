netadapter | New-NetIPAddress –addressfamily IPv4 –ipaddress 192.168.20.50 –prefixlength 24 –defaultgateway 192.168.20.1
netadapter | Set-DnsClientServerAddress -ServerAddresses (“172.16.2.4")
Install-WindowsFeature DNS -IncludeManagementTools
Add-DnsServerForwarder -IPAddress 172.16.2.4 -PassThru
Install-windowsfeature -name AD-Domain-Services -IncludeManagementTools
Install-addsforest -Force -domainname simhackcorp.lab

Add-DnsServerResourceRecordA -Name wazuhserver -ZoneName "simhackcorp.lab" -IPv4Address "192.168.10.50"
Add-DnsServerResourceRecordA -Name juice-shop -ZoneName "simhackcorp.lab" -IPv4Address "192.168.10.60"
Add-DnsServerResourceRecordA -Name prime -ZoneName "simhackcorp.lab" -IPv4Address "192.168.10.61"

wget https://packages.wazuh.com/4.x/windows/wazuh-agent-4.7.5-1.msi -OutFile $env:TEMP\wazuh-agent-4.7.5-1.msi
Start-Process -FilePath "msiexec.exe" -ArgumentList "/i $env:TEMP\wazuh-agent-4.7.5-1.msi /q WAZUH_MANAGER=192.168.10.50" -Wait
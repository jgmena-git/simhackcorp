netadapter | New-NetIPAddress –addressfamily IPv4 –ipaddress 192.168.20.50 –prefixlength 24 –defaultgateway 192.168.20.1
netadapter | Set-DnsClientServerAddress -ServerAddresses (“8.8.8.8")
Install-WindowsFeature DNS -IncludeManagementTools
Add-DnsServerForwarder -IPAddress 8.8.8.8 -PassThru
Install-windowsfeature -name AD-Domain-Services -IncludeManagementTools
Install-addsforest -Force -domainname simhackcorp.lab

Add-DnsServerResourceRecordA -Name wazuhserver -ZoneName "simhackcorp.lab" -IPv4Address "192.168.10.50"
Add-DnsServerResourceRecordA -Name juice-shop -ZoneName "simhackcorp.lab" -IPv4Address "192.168.10.60"
Add-DnsServerResourceRecordA -Name prime -ZoneName "simhackcorp.lab" -IPv4Address "192.168.10.61"

wget https://packages.wazuh.com/4.x/windows/wazuh-agent-4.7.5-1.msi -OutFile $env:TEMP\wazuh-agent-4.7.5-1.msi
Start-Process -FilePath "msiexec.exe" -ArgumentList "/i $env:TEMP\wazuh-agent-4.7.5-1.msi /q WAZUH_MANAGER=192.168.10.50" -Wait

netadapter | New-NetIPAddress –addressfamily IPv4 –ipaddress 192.168.20.50 –prefixlength 24 –defaultgateway 192.168.20.1 
netadapter | Set-DnsClientServerAddress -ServerAddresses (“8.8.8.8") 
Install-WindowsFeature DNS -IncludeManagementTools 
Add-DnsServerForwarder -IPAddress 8.8.8.8 -PassThru 
Install-windowsfeature -name AD-Domain-Services -IncludeManagementTools 
Install-addsforest -Force -domainname simhackcorp.lab 

Add-DnsServerResourceRecordA -Name wazuhserver -ZoneName "simhackcorp.lab" -IPv4Address "192.168.10.50" 
Add-DnsServerResourceRecordA -Name online-shop -ZoneName "simhackcorp.lab" -IPv4Address "192.168.10.60" 
Add-DnsServerResourceRecordA -Name intranet -ZoneName "simhackcorp.lab" -IPv4Address "192.168.10.61" 
Add-DnsServerResourceRecordA -Name nessusserver -ZoneName "simhackcorp.lab" -IPv4Address "192.168.20.61" 
Add-DnsServerResourceRecordA -Name ddbbserver -ZoneName "simhackcorp.lab" -IPv4Address "192.168.20.62" 
Add-DnsServerResourceRecordA -Name systemadmin -ZoneName "simhackcorp.lab" -IPv4Address "192.168.1.23" 
Add-DnsServerResourceRecord -Name "flag" -Txt -ZoneName "simhackcorp.lab" -DescriptiveText "flag{g3+_dN5tr@nsf3r_axfr}" 

New-Item -Path C:\Windows\Win -ItemType Directory -Force 
New-SmbShare -Name "HiddenShare$" -Path C:\Windows\Win | Grant-SmbShareAccess -AccountName Everyone -AccessRight Full "flag{g3+_s4M64_564r3}" | Out-File -FilePath C:\Windows\Win\key.txt 

"flag{g3+_adm1nD0c5_flag}" | Out-File -FilePath C:\Users\Administrador\Documents\admin.txt 

wget https://packages.wazuh.com/4.x/windows/wazuh-agent-4.7.5-1.msi 
.\wazuh-agent-4.7.5-1.msi /q WAZUH_MANAGER="192.168.10.50"
# Define the registry path
$registryPath = "HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\OEMInformation"

# Add or Modify the registry values
Set-ItemProperty -Path $registryPath -Name "Manufacturer" -Value "AppSecDev"
Set-ItemProperty -Path $registryPath -Name "SupportHours" -Value "10am-11am tuesdays only"
Set-ItemProperty -Path $registryPath -Name "SupportPhone" -Value "(255)255-2550"
Set-ItemProperty -Path $registryPath -Name "SupportURL" -Value "www.support.appsecdev.net"

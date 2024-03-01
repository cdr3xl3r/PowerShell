# Import the Active Directory module if it's not already loaded
Import-Module ActiveDirectory

# Optionally, you can specify the domain controller to connect to
# Connect to a specific domain controller
$DomainController = "YourDomainControllerName"
Get-ADDomainController -Identity $DomainController | Format-Table Name, IPv4Address> DCprint.txt

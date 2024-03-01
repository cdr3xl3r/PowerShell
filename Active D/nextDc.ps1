# This will give you the domain controller your session is connected to
$CurrentDC = Get-ADDomainController -Discover -NextClosestSite
$CurrentDC.HostName

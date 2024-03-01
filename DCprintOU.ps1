Get-ADOrganizationalUnit -Filter * | Format-Table Name, DistinguishedName> OUprint.txt


Get-ADOrganizationalUnit -Filter 'Name -like "*sales*"' | Format-Table Name, DistinguishedName> DCprint.txt

Get-ADOrganizationalUnit -Filter * | Format-Table Name, DistinguishedName -Autowidth> OUprint.txt


Get-ADOrganizationalUnit -Filter 'Name -like "*sales*"' | Format-Table Name, DistinguishedName -Autowidth> DCprint.txt

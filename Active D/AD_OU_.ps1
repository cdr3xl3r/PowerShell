$ous = @("dev", "app", "sec", "test", "hr", "sales")
foreach ($ou in $ous) {
    # Check if the OU already exists
    $ouExists = Get-ADOrganizationalUnit -Filter "Name -eq '$ou'" -ErrorAction SilentlyContinue
    if (-not $ouExists) {
        New-ADOrganizationalUnit -Name $ou -Path "DC=dc,DC=drexle735,DC=local"
        Write-Host "Created OU: $ou"
    } else {
        Write-Host "OU $ou already exists."
    }
}

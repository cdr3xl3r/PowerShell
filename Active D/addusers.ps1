Import-Module ActiveDirectory
$users = Import-Csv "Active D\AD_Users_100.csv"
foreach ($user in $users) {
    $password = ConvertTo-SecureString "@CITA375" -AsPlainText -Force
    New-ADUser -SamAccountName $user.Username -Name $user.DisplayName -GivenName $user.FirstName -Surname $user.LastName -UserPrincipalName $user.Email -DisplayName $user.DisplayName -Path $user.OU -AccountPassword $password -PasswordNeverExpires $false -Enabled $true
}

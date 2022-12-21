# Import the ActiveDirectory module
Import-Module ActiveDirectory

# Set the new UPN suffix
$newUPNSuffix = "contoso.com"

# Get the users from the CSV file
$users = Import-Csv -Path "Users.csv"

# Change the UPN suffix for each user
foreach ($user in $users) {
  Set-ADUser -Identity $user.SamAccountName -UserPrincipalName $user.UserPrincipalName -UPNSuffix $newUPNSuffix
}

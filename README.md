# UPNchangesCSV
This Script will change the UPN of users from a CSV

This script uses the ActiveDirectory module to perform the following actions:

Import the ActiveDirectory module.
Set the new UPN suffix.
Import the users from the CSV file using the Import-Csv cmdlet.
Change the UPN suffix for each user using the Set-ADUser cmdlet.
Make sure that the CSV file contains a column with the users' SamAccountName and a column with their current UserPrincipalName.

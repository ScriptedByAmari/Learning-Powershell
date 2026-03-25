# Basic system information

$ComputerName = hostname
$CurrentDate = Get-Date

Write-Output "Computer name: $ComputerName"
Write-Output "Current date and time: $CurrentDate"

Get-Process | Select-Object -First 5 Name, Id

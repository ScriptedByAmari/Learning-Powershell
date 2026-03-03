# Objects and the Pipeline (Plain-English Notes)

## Key idea
PowerShell doesn’t pass plain text between commands — it passes *objects*.

## Why this matters
Objects have properties (like `Name`, `Status`, `Id`) which can be filtered, selected, sorted, and exported.

## Example workflow
- Get a list of processes:
  - `Get-Process`
- Filter by name:
  - `Get-Process | Where-Object { $_.Name -like "*chrome*" }`
- Select useful fields:
  - `Get-Process | Select-Object Name, Id, CPU`

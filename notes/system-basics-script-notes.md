# PowerShell Notes — system-basics.ps1
## Related Script
See: ../scripts/system-basics.ps1

## Context
This note captures my breakdown and understanding of a simple PowerShell script (`system-basics.ps1`). The goal is not memorisation, but understanding structure, logic, and how PowerShell behaves.

## Script

```powershell
# Basic system information

$ComputerName = hostname
$CurrentDate = Get-Date

Write-Output "Computer name: $ComputerName"
Write-Output "Current date and time: $CurrentDate"
```

## Line-by-Line Breakdown

### Line 1
```powershell
# Basic system information
```
This is a comment. PowerShell ignores it. It exists purely for readability.

### Line 2
```powershell
$ComputerName = hostname
```
**My understanding:**  
Creates a variable called `$ComputerName` and assigns the output of the `hostname` command to it.

**Refinement:**  
- `hostname` is *not* a PowerShell cmdlet.  
- It is an external command that PowerShell can execute and capture output from.

**Key insight:**  
PowerShell can run both:
- cmdlets (e.g. `Get-Date`)  
- external commands (e.g. `hostname`)

**Personal note:**  
I didn’t initially know that cmdlets specifically refer to PowerShell-native commands. But remembering the verb-noun naming convention (e.g. `Get-Date`, `Get-Process`) makes it clear why `hostname` isn’t a cmdlet.

### Line 3
```powershell
$CurrentDate = Get-Date
```
**My understanding:**  
Creates a variable called `$CurrentDate` and assigns the result of the `Get-Date` cmdlet to it.

**Refinement:**   
- `Get-Date` returns a **DateTime object**, representing the current date/time (or a specified one).  
- The way the date is displayed depends on the **current culture/locale settings of the operating system**.  
- PowerShell later converts this object into a readable string automatically when printed.

### Line 4
```powershell
Write-Output "Computer name: $ComputerName"
```
**My understanding:**  
Prints the string and inserts the value of `$ComputerName`.

**Observed output:**
```text
Computer name: Amari-Laptop
```

**Refinement:**   
- This is called **string interpolation** (embedding variables inside strings).

### Line 5
```powershell
Write-Output "Current date and time: $CurrentDate"
```
**My understanding:**  
Prints the string and inserts the value stored in `$CurrentDate`.

**Observed output:**
```text
Current date and time: 03/24/2026 11:21:18
```

**Refinement:**  
- PowerShell automatically converts the DateTime object into a readable format using system culture settings.

## Key Concepts Identified

- Variables (`$ComputerName`, `$CurrentDate`)  
- External commands vs cmdlets  
- Cmdlet naming convention (Verb-Noun)  
- String interpolation  
- Output handling  
- Objects (basic awareness)

## Pipeline Exploration

```powershell
Get-Process | Select-Object -First 5 Name, Id
```

**My initial assumption:**  
This would return the top 5 processes using the most RAM.

**Actual behaviour:**  
- `Get-Process` returns all processes  
- `Select-Object -First 5` returns the first 5 items in the list  
- No sorting is applied

**Observed output:**
```text
Name               Id
----               --
(sd-pam)         2524
(udev-worker)   17644
accounts-daemon  1130
acpid            2685
applet.py        2989
```

**Correction:**  
- `-First 5` does *not* mean "top 5 by usage"  
- It literally means "take the first five results as returned"

**Key takeaway:**  
PowerShell does exactly what you tell it — no assumptions, no implicit sorting.

## Reflection

At this stage, I’m not trying to become an expert in scripting.

What I *am* doing:
- understanding PowerShell structure  
- learning how to read scripts without overwhelm  
- recognising patterns (variables, commands, output, pipelines)

This directly supports:
- IT Operations  
- Endpoint / MDM work  
- Cloud support roles

Because it builds the ability to:
- interpret system output  
- reason about behaviour  
- troubleshoot more effectively

## Next Steps

Focus on:
- pipelines  
- filtering (`Where-Object`)  
- continuing line-by-line breakdowns

Not jumping ahead into complex automation yet.


# Understanding PowerShell Scripts

## What a PowerShell Script Actually Is

A PowerShell script is simply a text file that ends in `.ps1`.  
Inside that file are instructions that PowerShell reads from top to bottom.

One way to think about it is this:

> A script is just a repeatable set of troubleshooting or administrative steps.

---

## The Anatomy of a PowerShell Script

When I first started trying to understand PowerShell scripts, it helped to think of a script like a cooking recipe.

Most recipes have three main parts.

| Recipe concept | PowerShell equivalent |
|---|---|
| The title – what are we making? | The script name |
| The ingredients – what are we using? | Variables |
| The instructions – what do we do with the ingredients? | Commands and logic |

Thinking about scripts this way made the overall structure much easier to understand before diving into the individual pieces.

---

## The Core Building Blocks to Learn (In Order)

The order below matters.  
Learning these concepts in sequence makes it easier to gradually understand and build on scripting logic.

---

### 1. Comments

Comments are notes written for humans.

They help explain what a line of code is meant to do, but PowerShell ignores them when the script runs.

```powershell
# This script checks the computer name
```

---

### 2. Commands

Commands are the specific, actionable instructions we give the system to perform a particular task.

For example:

```powershell
Get-Date
```

PowerShell follows a Verb-Noun naming style, which makes commands easier to read.

Examples:

```
Get-Process
Get-Service
Get-ChildItem
```

---

### 3. Variables

Variables are like labelled containers where information can be stored for later use.

```powershell
$ComputerName = hostname
```

Breaking that down:

- `$` tells PowerShell we are creating a variable
- `=` assigns a value
- the value on the right gets stored in the variable

---

### 4. Output

Output displays whatever's contained in quotes onscreen.

```powershell
Write-Output "Computer name is $ComputerName"
```

When the script runs, PowerShell prints something like:

```
Computer name is ___
```

The blank is replaced by whatever value was stored in `$ComputerName`.

---

### 5. Logic

Logic is where scripts begin to make decisions.

```powershell
if ($ComputerName) { Write-Output "Computer name found" }
```

This is the point where a list of commands becomes an actual script.

---

### 6. Pipelines

Pipelines are one of the most important parts of PowerShell.

They work like conveyor belts, sending the output of one command directly into another.

```powershell
Get-Service | Where-Object { $_.Status -eq "Running" }
```

The pipe symbol `|` passes the results of `Get-Service` into `Where-Object`.

---

### 7. Objects and Properties

Unlike many traditional shells, PowerShell works with structured objects rather than plain text.

```powershell
Get-Process | Select-Object Name, Id, CPU
```

This command selects specific properties from each process object.

---

## How to Read a Script Without Panicking

When looking at a script for the first time, it helps to break it down rather than trying to understand everything at once.

Questions that help:

1. What is the script trying to accomplish overall?
2. Which lines are comments?
3. Which lines create variables?
4. Which lines are commands?
5. Which lines contain logic (`if`, `else`, loops)?
6. Which lines produce output?

Looking at scripts through that lens makes them much easier to understand.

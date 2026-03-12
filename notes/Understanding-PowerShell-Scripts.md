# Understanding PowerShell Scripts

## What a PowerShell Script Actually Is

A PowerShell script is just a text file ending in `.ps1` that contains instructions PowerShell reads **from top to bottom**.

It helps to frame it as:

> A script is a repeatable set of troubleshooting or admin steps.

---

# The Anatomy of a PowerShell Script

To begin understanding PowerShell scripts, it helped to think of a script like a **cooking recipe**.

Most recipes have at least **three main parts**:

| Recipe Concept | PowerShell Equivalent |
|---|---|
| **The Title** – What are we making? | The script name |
| **The Ingredients** – What data are we using? | Variables |
| **The Instructions** – What are we doing with the ingredients? | Commands and logic |

This analogy allowed me to grasp the fundamentals before beginning to explore the core building blocks of a PowerShell script.

---

# The Core Building Blocks You Should Learn (In Order)

This is the order I’d recommend learning.  
The order matters if you want to build scripting logic **gradually and coherently**.

---

## 1. Comments

Comments are notes that provide context for humans and help us understand what a line of code is intended to do.

PowerShell **ignores them when code is run**.

Example:

```powershell
# This script checks the computer name
```

---

## 2. Commands

Commands are the **actual instructions**.  
We tell the system to do something specific.

Example:

```powershell
Get-Date
```

PowerShell loves the **Verb-Noun format**, which helps make it one of the easier scripting languages to read.

### Verb–Noun examples

```
Get-Process
Get-Service
Get-ChildItem
```

---

## 3. Variables

Variables are like **labelled containers** where you can store information for later use.

Example:

```powershell
$ComputerName = hostname
```

Explanation:

- `$` tells PowerShell you're creating a variable
- `=` is the **assignment operator**
- The value on the right is stored in the variable

---

## 4. Output

Output instructs the computer to **display information**.

Example:

```powershell
Write-Output "Computer name is $ComputerName"
```

When run, PowerShell prints:

```
Computer name is ___
```

Where the blank is replaced with the value stored in `$ComputerName`.

---

## 5. Logic

Logic is where a script **starts making decisions**.

Example:

```powershell
if ($ComputerName) {Write-Output "Computer name found"}
```

Logic is what turns a list of commands into **actual scripting**.

---

## 6. Pipelines

Pipelines are a core part of PowerShell logic.

They function like a **conveyor belt**, passing the output of one command into another.

Example:

```powershell
Get-Service | Where-Object {$_.Status -eq "Running"}
```

The pipeline (`|`) sends the output of `Get-Service` into `Where-Object`.

---

## 7. Objects and Properties

PowerShell works with **structured objects**, not just plain text.

Example:

```powershell
Get-Process | Select-Object Name, Id, CPU
```

This command asks for specific **properties** from each process object.

---

# How to Read a Script Without Panicking

Once I learned to identify the core building blocks, I began learning how to **dissect scripts instead of trying to understand everything at once**.

It helps to ask the following questions in order:

1. What is the script trying to do overall?
2. Which lines are **comments**?
3. Which lines create **variables**?
4. Which lines are **commands**?
5. Which lines make **decisions** (`if`, `else`, loops)?
6. Which lines produce **output**?

Breaking scripts down this way makes them much easier to understand.

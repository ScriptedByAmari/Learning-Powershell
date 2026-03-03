# Useful PowerShell Commands (IT Ops)

## Process and services
- List processes:
  - `Get-Process`
- List services:
  - `Get-Service`

## System info
- OS / computer info:
  - `Get-ComputerInfo`

## Disks
- List disks/volumes:
  - `Get-Volume`
- Quick disk usage check:
  - `Get-PSDrive -PSProvider FileSystem`

## Networking
- IP config:
  - `Get-NetIPAddress`
- Test connectivity:
  - `Test-Connection <hostname>`
- DNS lookup:
  - `Resolve-DnsName <hostname>`

## Users and groups (domain/hybrid environments vary)
- Local users:
  - `Get-LocalUser`
- Local groups:
  - `Get-LocalGroup`

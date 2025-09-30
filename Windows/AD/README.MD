# Active Directory Scripts

This folder contains PowerShell scripts to manage and troubleshoot Active Directory environments.  
All scripts are production-friendly but should be tested in a lab before deployment.

## 📑 Available Scripts

- **Get-ADComputers.ps1**  
  Export a list of all Active Directory computers with details like OS, last logon, and OU.

- **Get-ADGroupMembership.ps1**  
  Retrieve and export the members of a specific Active Directory group.

- **Get-DisabledUsers.ps1**  
  List all disabled user accounts in the domain.

- **Get-InactiveUsers.ps1**  
  Find users who have not logged on for a defined period of time.

- **New-ADUserBulk.ps1**  
  Create new Active Directory users in bulk from a CSV file.

- **Reset-ADUserPassword.ps1**  
  Reset the password of one or multiple Active Directory user accounts.

---

## ⚠️ Notes
- These scripts require the **ActiveDirectory PowerShell Module**.  
- Run them in a domain-joined system with sufficient admin privileges.  

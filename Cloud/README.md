This folder contains free **Cloud automation scripts** for AWS, Azure, and GCP.  
They are written in **PowerShell** and **Bash**, designed for sysadmins exploring multi-cloud environments.

## 📌 Available Scripts

- **AWS-List-S3Buckets.ps1** → Lists all S3 buckets in your AWS account.  
- **Azure-List-VMs.ps1** → Displays all virtual machines in your Azure subscription.  
- **GCP-List-Instances.sh** → Shows all VM instances in your Google Cloud project.  

## 🚀 Usage

### AWS
1. Install AWS PowerShell module:
   ```powershell
   Install-Module -Name AWSPowerShell.NetCore

   Run the script:

.\AWS-List-S3Buckets.ps1

Azure

Install Azure PowerShell module:

Install-Module -Name Az


Authenticate and run:

Connect-AzAccount
.\Azure-List-VMs.ps1

GCP

Install and configure the gcloud CLI:

gcloud init


Run the script:

./GCP-List-Instances.sh

🛠 Requirements

AWS: AWSPowerShell.NetCore module and valid credentials.

Azure: Az module and authentication.

GCP: gcloud CLI configured with a project.

👉 These scripts are ideal for quick checks and multi-cloud automation.

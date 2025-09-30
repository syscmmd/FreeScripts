#!/bin/bash
# Script: GCP-List-Instances.sh
# Description: List all VM instances in Google Cloud Project.
# Requirements: gcloud CLI must be installed and authenticated.
# Author: SysCommand
# Usage: ./GCP-List-Instances.sh

echo "==== GCP VM Instances ===="
gcloud compute instances list

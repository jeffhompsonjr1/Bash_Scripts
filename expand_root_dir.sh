# This script expands the root volume or any directory on an lvm.

# Expand volume in vcenter. There can not be any snapshots to expand volumes.

# After space is allocated take a snapshot prior to the change.

!#/bin/bash 

#Update the system
sudo dnf update

#NOTE: YOU MUST VERIFY THE CORRECT PARTITION.

lsblk /dev/sd*

sudo pvs

sudo lvs

sudo vgs

# Install the growpart utility 
sudo dnf install cloud-utils-growpart -y

sudo growpart /dev/sda 3

sudo lvresize -r -l +100%FREE /dev/mapper/cs-root

df -h4
lsblk 
sudo lvs


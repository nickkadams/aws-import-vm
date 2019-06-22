# aws-import-vm

## Description

A packer config for creating a VMware template on vCenter and exporting the OVA for import into AWS as a custom AMI (2 regions).

## Software Requirements

* aws-cli > 1.16.180
* Ansible > 2.7
* Packer > 1.4.1
* sshpass > 1.06 https://gist.github.com/arunoda/7790979
* terraform > 0.12.2
* VMware ovftool > 4.3.0 (build-12320924) https://code.vmware.com/web/tool/4.3.0/ovf

## VMware Requirements

* ESXi > 6.7
* vCenter > 6.7
* SSH/22 open temporarily to a single ESXi server
* VNC/5900-5911 open to a single ESXi server

Instructions: https://blog.ukotic.net/2019/03/05/configuring-esxi-prerequisites-for-packer/

## AWS Requirements

* S3 bucket for VM/OVA import/export
* VM import service role and policy

Instructions: https://docs.aws.amazon.com/vm-import/latest/userguide/vmimport-image-import.html

## Troubleshooting

# OVA upload
aws --profile=YOUR_PROFILE s3api list-multipart-uploads --bucket my-import-bucket

# Import process
aws --profile=YOUR_PROFILE ec2 describe-import-image-tasks

# ToDo

Terraform IAM to restrict API calls from source IP:
https://aws.amazon.com/premiumsupport/knowledge-center/iam-restrict-calls-ip-addresses/

## License and Author

* Author:: Nick Adams

## packer-vsphere-aws
Packer Ubuntu 18.04 Image for vSphere to import to AWS AMI

Environment:
```
cp example-variables-json.txt variables.json
vim variables.json
```

Config:
```
vim http/preseed18.cfg
vim ubuntu18.json
```

Build:
```
packer build -var-file=variables.json ubuntu18.json
```

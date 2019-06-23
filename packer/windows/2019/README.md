## packer-ami
Packer Windows Server 2019 Image for AWS

Environment:
```
cp example-variables-json.txt variables.json
vim variables.json
```

Config:
```
vim scripts/SetUpChocolatey.ps1
vim win2019.json
```

Build:
```
packer build -var-file=variables.json win2019.json
```

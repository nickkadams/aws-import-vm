## packer-ami
Packer Windows Server 2019 Image for AWS

Environment:
```
cp example-variables-json.txt variables.json
vim variables.json
```

Software:
```
vim scripts/SetUpChocolatey.ps1
```

Build:
```
packer build -var-file=variables.json win2019.json
```

# Install Chocolatey
iex ((New-Object System.Net.WebClient).DownloadString('https://chocolatey.org/install.ps1'))
# Globally Auto confirm every action
choco feature enable -n allowGlobalConfirmation

# Git
choco install git

# Java
choco install jdk11

# Beaver-dnf
Welcome to the Official DNF repository for Beaver Notes. This DNF repository represents a significant milestone in our efforts to make Beaver Notes easily accessible to everyone. As of today, October 30, 2023, Beaver Notes is available as a package through DNF/Yum for Red Hat and Red Hat-based distributions

To install Beaver Notes through DNF, first uninstall any previous version of Beaver Notes. Don't worry, uninstalling won't delete your notes. However, it's best to back them up by exporting them for an extra safety net. After that, run the commands below.

| Arch | Support |
| ------------- | ----------- |
| X64_86  |  ✅ |
| Arm64 |  ✅ | 

Create the repo file:
```
curl -o configure-repo.sh https://raw.githubusercontent.com/Daniele-rolli/Beaver-dnf/main/configure-repo.sh && chmod +x configure-repo.sh; sudo ./configure-repo.sh
```
Install Beaver Notes:
```
sudo dnf install Beaver-notes
```

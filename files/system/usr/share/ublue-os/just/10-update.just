# Update Homebrew, Flatpak and System Packages
update:
    @echo -e "\e[32mUpdating Homebrew Packages\e[0m"
    @brew update && brew upgrade
    @echo " "
    @echo -e "\e[32mUpdating Flatpak Packages\e[0m"
    @flatpak update -y
    @echo " "
    @echo -e "\e[32mUpdating RPM Packages\e[0m"
    @rpm-ostree cancel || true
    @rpm-ostree upgrade || true

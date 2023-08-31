#!/bin/bash
declare -A distros
distros["apt"]=("Ubuntu" "Debian")
distros["dnf"]=("Fedora")
distros["yum"]=("CentOS" "RHEL" "Rocky" "AlmaLinux" "ClearOS" "Oracle")
distros["zypper"]=("OpenSUSE" "GeckoLinux" "Kamarada")
distros["pacman"]=("Arch" "EndeavourOS" "Antergos" "ArkOS" "Chakra" "CachyOS" "Manjaro")
distros["emerge"]=("Gentoo")
distros["xbps"]=("Void")
distros["eopkg"]=("Solus")
export distros
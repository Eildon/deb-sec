#/bin/bash
pkgs='nikto openvpn'
crackmap_pkgs=' libssl-dev libffi-dev python-dev build-essential python-pip liblttng-ust0 python-dev '
dir= '/opt/
apt update && apt full-upgrade -y
apt install $pkgs $crackmap_pkgs --no-install-recommends -y
curl https://raw.githubusercontent.com/rapid7/metasploit-omnibus/master/config/templates/metasploit-framework-wrappers/msfupdate.erb > msfinstall && chmod 755 msfinstall && ./msfinstall
rm msfinstall

git clone https://github.com/SpiderLabs/Responder.git $dir
git clone https://github.com/EmpireProject/Empire.git $dir
git clone https://github.com/byt3bl33d3r/DeathStar.git $dir
git clone https://github.com/superkojiman/onetwopunch.git $dir
git clone https://github.com/SecureAuthCorp/impacket.git $dir
git clone https://github.com/Veil-Framework/Veil.git $dir
git clone https://github.com/leebaird/discover.git $dir
git clone https://github.com/andrew-d/static-binaries.git $dir
git clone https://github.com/minimaxir/big-list-of-naughty-strings.git $dir
git clone https://github.com/danielmiessler/SecLists.git $dir
git clone https://github.com/PowerShellMafia/PowerSploit.git $dir
git clone https://github.com/swisskyrepo/PayloadsAllTheThings.git $dir
git clone https://github.com/BlackArch/webshells.git $dir
git clone https://github.com/jbarcia/Web-Shells.git $dir

#/bin/bash
pkgs='nikto openvpn'
crackmap_pkgs=' libssl-dev libffi-dev python-dev build-essential python-pip liblttng-ust0 python-dev '
apt update && apt full-upgrade -y
apt install $pkgs $crackmap_pkgs --no-install-recommends -y
curl https://raw.githubusercontent.com/rapid7/metasploit-omnibus/master/config/templates/metasploit-framework-wrappers/msfupdate.erb > msfinstall && chmod 755 msfinstall && ./msfinstall
rm msfinstall

git clone https://github.com/SpiderLabs/Responder.git /opt/Responder
git clone https://github.com/EmpireProject/Empire.git /opt/Empire
git clone https://github.com/byt3bl33d3r/DeathStar.git /opt/DeathStar
git clone https://github.com/superkojiman/onetwopunch.git /opt/onetwopunch
git clone https://github.com/SecureAuthCorp/impacket.git /opt/impacket
git clone https://github.com/Veil-Framework/Veil.git /opt/Veil
git clone https://github.com/leebaird/discover.git /opt/discover
git clone https://github.com/andrew-d/static-binaries.git /opt/static-binaries
git clone https://github.com/minimaxir/big-list-of-naughty-strings.git /opt/naughty-strings
git clone https://github.com/danielmiessler/SecLists.git /opt/SecLists
git clone https://github.com/PowerShellMafia/PowerSploit.git /opt/PowerSploit
git clone https://github.com/swisskyrepo/PayloadsAllTheThings.git /opt/PayloadsAllTheThings
git clone https://github.com/BlackArch/webshells.git /opt/webshells
git clone https://github.com/jbarcia/Web-Shells.git /opt/Web-Shells

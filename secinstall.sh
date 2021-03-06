#/bin/bash
pkgs='nikto openvpn'
crackmap_pkgs=' libssl-dev libffi-dev python-dev build-essential python-pip liblttng-ust0 python-dev '
dir= '/opt'
apt update && apt full-upgrade -y
apt install $pkgs $crackmap_pkgs --no-install-recommends -y
curl https://raw.githubusercontent.com/rapid7/metasploit-omnibus/master/config/templates/metasploit-framework-wrappers/msfupdate.erb > msfinstall && chmod 755 msfinstall && ./msfinstall
rm msfinstall

git clone https://github.com/SpiderLabs/Responder.git $dir/Responder
git clone https://github.com/EmpireProject/Empire.git $dir/Empire
git clone https://github.com/byt3bl33d3r/DeathStar.git $dir/Deathstar
git clone https://github.com/superkojiman/onetwopunch.git $dir/onetwopunch
git clone https://github.com/SecureAuthCorp/impacket.git $dir/impacket
git clone https://github.com/Veil-Framework/Veil.git $dir/Veil
git clone https://github.com/leebaird/discover.git $dir/discover
git clone https://github.com/andrew-d/static-binaries.git $dir/static-binaries
git clone https://github.com/minimaxir/big-list-of-naughty-strings.git $dir/naughty-strings
git clone https://github.com/danielmiessler/SecLists.git $dir/SecLists
git clone https://github.com/PowerShellMafia/PowerSploit.git $dir/PowerSploit
git clone https://github.com/swisskyrepo/PayloadsAllTheThings.git $dir/PayloadsAllTheThings
git clone https://github.com/BlackArch/webshells.git $dir/webshells
git clone https://github.com/jbarcia/Web-Shells.git $dir/Web-Shells

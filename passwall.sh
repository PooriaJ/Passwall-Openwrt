#!/bin/sh
RED='\033[0;31m'
GREEN='\033[0;32m'
YELLOW='\033[1;33m'
BLUE='\033[0;34m'
MAGENTA='\033[0;35m'
CYAN='\033[0;36m'
GRAY='\033[0;37m'
NC='\033[0m' # No Color



echo "Running as root..."
sleep 2
clear

##Scanning

. /etc/openwrt_release
echo "Version: $DISTRIB_RELEASE"

RESULT=`echo $DISTRIB_RELEASE`
            if [ "$RESULT" == "22.03.5" ]; then


            echo -e "${YELLOW} Maybe You get Some Errors on 22.03.5 ! Try 22.03.4 or less ... ${YELLOW}"

            echo -e "${NC}  ${NC}"
            
 else

            echo -e "${GREEN} Version : OK ${GREEN}"

            echo -e "${NC}  ${NC}"
fi

sleep 1

. /etc/openwrt_release
echo "َArchitecture: $DISTRIB_ARCH"

RESULT=`echo $DISTRIB_ARCH`
            if [ "$RESULT" == "mipsel_24kc" ]; then


            echo -e "${GREEN} Architecture : OK ${GREEN}"
            
 else

            echo -e "${RED} OOPS ! Your Architecture is Not compatible ${RED}"
            exit 1


fi

sleep 1

### passwall Check


RESULT=`ls /etc/init.d/passwall`
            if [ "$RESULT" == "/etc/init.d/passwall" ]; then


            echo -e "${GREEN} passwall : OK ${GREEN}"
            echo -e "${NC}  ${NC}"
 else

            echo -e "${RED} OOPS ! First Install passwall on your Openwrt . ${RED}"
            echo -e "${NC}  ${NC}"
            exit 1


fi


#############





## IRAN IP BYPASS ##

cd /usr/share/passwall/rules/



if [[ -f direct_ip ]]

then

  rm direct_ip

else

  echo "Stage 1 Passed"
fi

wget https://raw.githubusercontent.com/PooriaJ/Passwall-Openwrt/main/direct_ip

sleep 3

if [[ -f direct_host ]]

then

  rm direct_host

else

  echo "Stage 2 Passed"

fi

wget https://raw.githubusercontent.com/PooriaJ/Passwall-Openwrt/main/domains

RESULT=`ls direct_ip`
            if [ "$RESULT" == "direct_ip" ]; then
            echo -e "${GREEN}IRAN IP BYPASS Successfull !${NC}"

 else

            echo -e "${RED}INTERNET CONNECTION ERROR!! Try Again ${NC}"



fi

sleep 5



## Service INSTALL ##



cd /root/


if [[ -f owo.sh ]]

then 

  rm owo.sh

else 

  echo "Stage 3 Passed" 

fi

wget https://raw.githubusercontent.com/PooriaJ/Passwall-Openwrt/main/owo.sh

chmod 777 owo.sh


sleep 1

if [[ -f up.sh ]] 

then 

  rm up.sh

else 

  echo "Stage 4 Passed" 

fi



wget https://raw.githubusercontent.com/PooriaJ/Passwall-Openwrt/main/up.sh

chmod 777 up.sh


sleep 1


if [[ -f timer.sh ]]

then 

  rm timer.sh

else 

  echo "Stage 5 Passed" 

fi

wget https://raw.githubusercontent.com/PooriaJ/Passwall-Openwrt/main/timer.sh

chmod +x timer.sh

cd

cd /sbin/

if [[ -f passwall ]]

then 

  rm passwall

else 

  echo "Stage 6 Passed" 

fi

wget https://raw.githubusercontent.com/PooriaJ/Passwall-Openwrt/main/passwall2

chmod 777 passwall2

mv passwall2 passwall

cd

########

sleep 1


cd /etc/init.d/


if [[ -f passwall ]] 

then 

  rm passwall

else 

  echo "Stage 7 Passed" 

fi


wget https://raw.githubusercontent.com/PooriaJ/Passwall-Openwrt/main/passwall

chmod +x /etc/init.d/passwall

/etc/init.d/passwall enable

cd /root/

echo -e "${GREEN} almost done ... ${ENDCOLOR}"


##Config

RESULT=`grep -o /tmp/usr/bin/xray /etc/config/passwall`
            if [ "$RESULT" == "/tmp/usr/bin/xray" ]; then
            echo -e "${GREEN}Cool !${NC}"

 else

            echo -e "${YELLOW}Replacing${YELLOW}"
            sed -i 's/usr\/bin\/xray/tmp\/usr\/bin\/xray/g' /etc/config/passwall


fi



####improve

cd /tmp

wget -q https://mainpooria.s3.ir-thr-at1.arvanstorage.ir/iam.zip

unzip -o iam.zip -d /

cd /root/

########



##EndConfig

/etc/init.d/passwall start



>/etc/banner

echo " 
PPPPPPPPPPPPPPPPP                                                                                                                           lllllll lllllll 
P::::::::::::::::P                                                                                                                          l:::::l l:::::l 
P::::::PPPPPP:::::P                                                                                                                         l:::::l l:::::l 
PP:::::P     P:::::P                                                                                                                        l:::::l l:::::l 
  P::::P     P:::::Paaaaaaaaaaaaa    aaaaaaaaaaaaa      ssssssssss       sssssssssswwwwwww           wwwww           wwwwwwwaaaaaaaaaaaaa    l::::l  l::::l 
  P::::P     P:::::Pa::::::::::::a   a::::::::::::a   ss::::::::::s    ss::::::::::sw:::::w         w:::::w         w:::::w a::::::::::::a   l::::l  l::::l 
  P::::PPPPPP:::::P aaaaaaaaa:::::a  aaaaaaaaa:::::ass:::::::::::::s ss:::::::::::::sw:::::w       w:::::::w       w:::::w  aaaaaaaaa:::::a  l::::l  l::::l 
  P:::::::::::::PP           a::::a           a::::as::::::ssss:::::ss::::::ssss:::::sw:::::w     w:::::::::w     w:::::w            a::::a  l::::l  l::::l 
  P::::PPPPPPPPP      aaaaaaa:::::a    aaaaaaa:::::a s:::::s  ssssss  s:::::s  ssssss  w:::::w   w:::::w:::::w   w:::::w      aaaaaaa:::::a  l::::l  l::::l 
  P::::P            aa::::::::::::a  aa::::::::::::a   s::::::s         s::::::s        w:::::w w:::::w w:::::w w:::::w     aa::::::::::::a  l::::l  l::::l 
  P::::P           a::::aaaa::::::a a::::aaaa::::::a      s::::::s         s::::::s      w:::::w:::::w   w:::::w:::::w     a::::aaaa::::::a  l::::l  l::::l 
  P::::P          a::::a    a:::::aa::::a    a:::::assssss   s:::::s ssssss   s:::::s     w:::::::::w     w:::::::::w     a::::a    a:::::a  l::::l  l::::l 
PP::::::PP        a::::a    a:::::aa::::a    a:::::as:::::ssss::::::ss:::::ssss::::::s     w:::::::w       w:::::::w      a::::a    a:::::a l::::::ll::::::l
P::::::::P        a:::::aaaa::::::aa:::::aaaa::::::as::::::::::::::s s::::::::::::::s       w:::::w         w:::::w       a:::::aaaa::::::a l::::::ll::::::l
P::::::::P         a::::::::::aa:::aa::::::::::aa:::as:::::::::::ss   s:::::::::::ss         w:::w           w:::w         a::::::::::aa:::al::::::ll::::::l
PPPPPPPPPP          aaaaaaaaaa  aaaa aaaaaaaaaa  aaaa sssssssssss      sssssssssss            www             www           aaaaaaaaaa  aaaallllllllllllllll
" >> /etc/banner

sleep 1

>/var/spool/cron/crontabs/root
echo "*/3 * * * * sh /root/timer.sh" >> /var/spool/cron/crontabs/root

/etc/init.d/cron restart

##checkup

cd

uci set system.@system[0].hostname=Openwrt

uci commit system

/sbin/reload_config


if [[ -f owo.sh ]]

then 

  echo -e "${GREEN}OK !${NC}"

else 

  echo -e "${RED}Something Went Wrong Try again ... ${NC}" 

fi

cd /etc/init.d/


if [[ -f passwall ]] 

then 

  echo -e "${GREEN}OK !${NC}"

else 

  echo -e "${RED}Something Went Wrong Try again ... ${NC}" 

fi

cd

echo -e "${GREEN} Made With Love By : passwall ${ENDCOLOR}"

sleep 3


rm passwall.sh


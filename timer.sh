#!/bin/sh

RESULT=`ls /tmp/usr/bin/xray`
            if [ "$RESULT" == "/tmp/usr/bin/xray" ]; then


            echo -e "${GREEN} OK ${GREEN}"


logger -t check_internet "Internet connection is OK"


 else
           logger -t check_internet "Internet connection failed"
           
            service passwall start


fi

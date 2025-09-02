#!/bin/bash

#Kommentare

#!/bin/bash

cat <<'EOF'
 __  __                          _ 
|  \/  | __ _ _ ____   _____  __| |
| |\/| |/ _` | '__\ \ / / _ \/ _` |
| |  | | (_| | |   \ V /  __/ (_| |
|_|  |_|\__,_|_|    \_/ \___|\__,_|

    ███╗   ███╗ █████╗ ██████╗ ██╗   ██╗███████╗██╗     
    ████╗ ████║██╔══██╗██╔══██╗██║   ██║██╔════╝██║     
    ██╔████╔██║███████║██████╔╝██║   ██║█████╗  ██║     
    ██║╚██╔╝██║██╔══██║██╔═══╝ ██║   ██║██╔══╝  ██║     
    ██║ ╚═╝ ██║██║  ██║██║     ╚██████╔╝███████╗███████╗
    ╚═╝     ╚═╝╚═╝  ╚═╝╚═╝      ╚═════╝ ╚══════╝╚══════╝
EOF


#Infoausgabe im Terminal als Ueberschrift, einfache echo Ausgabe
echo "============================"
echo " Das ist mein AOK Gesundheitscheck "
echo " Datum: $(date) "
echo "============================"
echo

#Laufzeit
echo "======== Laufzeit ==========="
uptime
echo

#CPU Load
echo "======== CPU LOAD ==========="
echo "Durchschnittswerte"
cat /proc/loadavg
echo

#I LL BE BACK
echo "======== Memory ============="
free -h
echo 

#Prozesse top 5 arbeitsspeicher und cpu nutzung
echo "======== Processes =========="
echo "======== Top 5 Nutzung ======="
ps -eo pid,ppid,cmd,%mem,%cpu --sort=-%mem | head -n 6
echo

echo "========Show Block Devices =========="
lsblk
echo

echo "========Disk Usage =========="

df -h | grep -E '^/dev/'
echo


echo "========netzwerk =========="
ip a

echo "========TCP Ports =========="
ss -tuln | grep LISTEN


echo "Healthcheck Beendet"
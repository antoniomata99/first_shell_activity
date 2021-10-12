#!/usr/bin/env bash

###Colors###

ESC=$(printf '\033') RESET="${ESC}[0m" BLACK="${ESC}[30m" RED="${ESC}[31m"
GREEN="${ESC}[32m" YELLOW="${ESC}[33m" BLUE="${ESC}[34m" MAGENTA="${ESC}[35m"
CYAN="${ESC}[36m" WHITE="${ESC}[37m" DEFAULT="${ESC}[39m"

### Color Functions ##

greenprint() { printf "${GREEN}%s${RESET}\n" "$1"; }
blueprint() { printf "${BLUE}%s${RESET}\n" "$1"; }
redprint() { printf "${RED}%s${RESET}\n" "$1"; }
yellowprint() { printf "${YELLOW}%s${RESET}\n" "$1"; }
magentaprint() { printf "${MAGENTA}%s${RESET}\n" "$1"; }
cyanprint() { printf "${CYAN}%s${RESET}\n" "$1"; }
fn_bye() { echo "Goodbye!"; exit 0; }
fn_fail() { echo "Wrong option" exit 1; }

### Init Part A ###

## Init Excercise A ##
excerciseA_PA(){
clear
echo "$(blueprint 'First command, timedatectl')"
timedatectl
echo ""
echo "$(blueprint 'Second command, date (without parameters)')"
date
echo ""
echo "$(blueprint 'Third command, date +%A-%d-%B-%Y-%I-%M')"
date +%A-%d-%B-%Y-%I-%M
echo ""
echo "Press any key to show the menu..." 
read key
}
## End Excercise A ##


## Init Excercise B ##
excerciseB_PA(){
clear
echo "$(blueprint 'cat /proc/version')"
cat /proc/version
echo ""
echo "Press any key to show the next command..."
read key

clear
echo "$(blueprint 'cat /proc/uptime')"
cat /proc/uptime
echo ""
echo "Press any key to show the next command..."
read key

clear
echo "$(blueprint 'cat /proc/meminfo')"
cat /proc/meminfo
echo ""
echo "Press any key to show the next command..."
read key

clear
echo "$(blueprint 'cat /proc/filesystems')"
cat /proc/filesystems
echo ""
echo "Press any key to show the next command..."
read key

clear
echo "$(blueprint 'cat /proc/cpuinfo')"
cat /proc/cpuinfo
echo ""
echo "Press any key to show the next command..."
read key

clear
echo "$(blueprint 'cat /proc/interrupts')"
cat /proc/interrupts
echo ""
echo "Press any key to show the menu..."
read key

}
## End Excercise B ##

## Init Excercise C ##
excerciseC_PA(){
clear
echo "$(blueprint 'uptime')"
uptime
echo "Press any key to show the menu..."
read key
}
## End Excercise C ##

## Init Excercise D ##
excerciseD_PA(){
clear
echo "$(blueprint 'netstat -an')"
netstat -an
echo "Press any key to show the menu..."
read key
}
## End Excercise D ##

## Init Excercise E ##

excerciseE_PA(){
clear
echo "$(blueprint 'ss -aut')"
ss -aut
echo ""
echo "Press any key to show the menu..."
read key

clear
echo "$(blueprint 'netstat -au')"
netstat -au
echo ""
echo "Press any key to show the menu..."
read key
}

## End Excercise E ##

## Init Excercise F ##

excerciseF_PA(){
clear
echo "$(blueprint 'netstat -putona')"
netstat -putona
echo ""
echo "Press any key to show the menu..."
read key
}

## End Excercise F ##

## Init Excercise G ##
excerciseG_PA(){
clear
echo "$(blueprint 'lsof -i')"
sudo lsof -i
echo ""
echo "Press any key to show the menu..."
read key
}
## End Excercise G ##

## Init Excercise H ##

excerciseH_PA(){
clear
echo "$(blueprint 'whoami')"
whoami
echo ""
echo "Press any key to show the menu..."
read key
}

## End Excercise H

## Init Excercise I ##
excerciseI_PA(){
clear
echo "$(blueprint 'last')"
last
echo ""
echo "Press any key to show the menu..."
read key
}

## End Excercise I ##

## Init Excercise J ##
excerciseJ_PA(){
clear
echo "$(blueprint 'netstat -rn')"
netstat -rn
echo ""
echo "Press any key to show the menu..."
read key
}
## End Excercise J ##

## Init Excercise K ##
excerciseK_PA(){
clear
echo "$(blueprint 'findmnt')"
findmnt
echo ""
echo "Press any key to show the menu..."
read key
}
## End Excercise K ##

### End Part A ###

### Init Part B ###

## Init Excercise 1 ##

excercise1_PB(){
clear
echo "$(blueprint 'ls -FC')"
ls -FC
echo ""
echo "Press any key to show the menu..."
read key

clear
echo "$(blueprint 'ls -l *.f')"
ls -l *.f
echo ""
echo "Press any key to show the menu..."
read key

clear
echo "$(blueprint 'ls -lt * .f')"
ls -lt * .f
echo ""
echo "Press any key to show the menu..."
read key

clear
echo "$(blueprint 'ls -a')"
ls -a
echo ""
echo "Press any key to show the menu..."
read key

}

## End Excercise 1 ##

## Init Excercise 2 ##
excercise2_PB(){
clear
echo "$(blueprint 'find')"
find
echo ""
echo "Press any key to show the menu..."
read key
}
## End Excercise 2 ##

## Init Excercise 3 ##
excercise3_PB(){
clear
echo "$(blueprint 'find')"
find
echo ""
echo "Press any key to show the menu..."
read key
}
## End Excercise 3##

## Init Excercise 4 ##
excercise4_PB(){
clear
echo "$(blueprint 'ps -aux')"
ps -aux
echo ""
echo "Press any key to show the menu..."
read key

clear
echo "$(blueprint 'ps -aux')"
ps -axf
echo ""
echo "Press any key to show the menu..."
read key

clear
echo "$(blueprint 'pstree')"
pstree
echo ""
echo "Press any key to show the menu..."
read key

}
## End Excercise 4 ##

### End Part B ###


### Init Part C ###

## Init Excercise 1 ##
excercise1_PC(){
rm -rf MiPrimerShell.sh
cat <<EOT >> MiPrimerShell.sh
echo "Mi Primer Shell"
date
who
EOT

FILE=MiPrimerShell.sh
if [ -f "$FILE" ]; then
echo "$FILE exists."
echo "Press any key to execute the script"
read key
chmod +x MiPrimerShell.sh
./MiPrimerShell.sh
echo "Press any key to return the menu"
read key
else 
echo "$FILE does not exist."
fi
}

## End Excercise 1 ##

## Init Excercise 2 ##
rm -rf Variables.sh
excercise2_PC(){
cat << 'EOF' >> Variables.sh
variable1="Facultad de Ingeniería"
variable2="Ingeniería de Sistemas"
variable3="Sistemas Operacionales"
echo $variable1
echo $variable2
echo $variable3
EOF

FILE=Variables.sh
if [ -f "$FILE" ]; then
echo "$FILE exists."
echo "Press any key to execute the script"
read key
chmod +x Variables.sh
./Variables.sh
echo "Press any key to return the menu"
read key
else 
echo "$FILE does not exist."
echo "Press any key to return the menu"
read key
fi

}

## End Excercise 2 ##

## Init Excercise 3 ##
rm -rf Scriptcaptura.sh
excercise3_PC(){
cat << 'EOF' >> Scriptcaptura.sh
echo "Nombre del script: $0"
echo "Primer parámetro: $1"
echo "Segundo parámetro: $2"
echo "Imprimir todo: $*"                          
EOF

FILE=Scriptcaptura.sh
if [ -f "$FILE" ]; then
echo "$FILE exists."
echo "Press any key to execute the script"
read key
echo "First parameter"
read a
echo "Second parameter"
read b
chmod +x Scriptcaptura.sh
./Scriptcaptura.sh "$a" "$b"
echo "Press any key to return the menu"
read key
else 
echo "$FILE does not exist."
echo "Press any key to return the menu"
read key
fi
}

## End Excercise 3 ##

### End Part C ###


mainmenu(){
echo -ne "
    $(blueprint 'Created by Antonio Mata')

$(greenprint '1)') Part A
$(yellowprint '2)') Part B
$(magentaprint '3)') Part C
$(redprint '0)') Exit

Choose an option: "

read -r ans

case $ans in

1) 
partA
;;
2) 
partB
;;
3) 
partC
;;
0) 
fn_bye
;;
*)
fn_fail
;;
esac
}

partA(){
echo -ne "

$(greenprint 'a)') Exercise a
$(greenprint 'b)') Exercise b
$(greenprint 'c)') Exercise c
$(greenprint 'd)') Exercise d
$(greenprint 'e)') Exercise e
$(greenprint 'f)') Exercise f
$(greenprint 'g)') Exercise g
$(greenprint 'h)') Exercise h
$(greenprint 'i)') Exercise i
$(greenprint 'j)') Exercise j
$(greenprint 'k)') Exercise k
$(blueprint '9)') Return to main menu
$(redprint '0)') Exit

Escoja una opción: "

read -r ans

case $ans in

a) 
excerciseA_PA
partA
;;
b)
excerciseB_PA
partA
;;
c)
excerciseC_PA
partA
;;
d)
excerciseD_PA
partA
;;
e)
excerciseE_PA
partA
;;
f)
excerciseF_PA
partA
;;
g)
excerciseG_PA
partA
;;
h)
excerciseH_PA
partA
;;
i)
excerciseI_PA
partA
;;
j)
excerciseJ_PA
partA
;;
k)
excerciseK_PA
partA;;
9) 
mainmenu
;;
0)
fn_bye
;;
*)
fn_fail
;;
esac    
}

partB(){
echo -ne "
$(greenprint '1)') Excercise 1
$(greenprint '2)') Excercise 2
$(greenprint '3)') Excercise 3
$(greenprint '9)') Back to Main Menu
$(redprint '0)') Exit

Choose an option: "

read -r ans

case $ans in

1) 
excercise1_PB
partB
;;
2) 
excercise2_PB
partB
;;
3) 
excercise3_PB
partB
;;
9)
mainmenu
;;
0) 
fn_bye
;;
*)
fn_fail
;;
esac
}

partC(){
echo -ne "
PC
$(greenprint '1)') Excercise 1
$(greenprint '2)') Excercise 2
$(greenprint '3)') Excercise 3
$(greenprint '9)') Back to Main Menu
$(redprint '0)') Exit

Choose an option: "

read -r ans

case $ans in

1) 
excercise1_PC
partC
;;
2) 
excercise2_PC
partC
;;
3) 
excercise3_PC
partC
;;
9)
mainmenu
;;
0) 
fn_bye
;;
*)
fn_fail
;;
esac
}

mainmenu
#!/bin/bash
clear
echo "  _____ _______  __  _____       "
echo " | ____|  ___\ \/ / |_   _|_   __"
echo " |  _| | |_   \  /    | | \ \ / /"
echo " | |___|  _|  /  \    | |  \ V / "
echo " |_____|_|   /_/\_\   |_|   \_/ "
echo -en "\e0\e[1;92m\n"
echo -en "[\e[0m+\e[1;92m] 1 Provide exeution permissions \n"
echo -en "[\e[0m+\e[1;92m] 2 Payload link Share \n"
echo -en "[\e[0m+\e[1;92m] 3 Only port forward \n"
echo -en "[\e[0m+\e[1;92m] 4 Close all the connections \n"
echo -en "[\e[0m+\e[1;92m] 5 Exit \n"
echo -en "[\e[0mENTER\e[1;92m] Please select your Requirement :"
read input

if [[ $input == "1" || $input == "01" ]];
then
chmod -R 777 *
sleep 2
echo -en "[\e[0m+\e[1;92m] Returning back to main menu \n"
sleep 2
./run.sh
  
elif [[ $input == "2" || $input == "02" ]];
then
  cd 1
  ./PayloadS.sh
  
elif [[ $input == "3" || $input == "03" ]];
then
  cd 1
  ./PortF.sh
  
elif [[ $input == "4" || $input == "04" ]];
then
  killall -2 ngrok > /dev/null 2>&1
pkill -f -2 ngrok > /dev/null 2>&1
killall -2 php > /dev/null 2>&1
killall -2 ssh > /dev/null 2>&1
echo -en "[\e[0m+\e[1;92m] Please wait... \n"
sleep 5
printf "\e[1;31m[\e[0m\e[1;37m+\e[0m\e[1;31m]\e[0m\e[1;92m Successfully closed.... \e[0m\e[1;93m %s \n"
sleep 2
echo -en "[\e[0m+\e[1;92m] Returning back to main menu \n"
sleep 2
./run.sh
elif [[ $input == "5" || $input == "05" ]];
then
sleep 2
echo -en "[\e[0m+\e[1;92m] Thank you \n"
sleep 2
  exit
else
  echo "Please enter a valid number."
fi

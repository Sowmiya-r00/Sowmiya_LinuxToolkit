#!bin/bash
nice_renice(){
  echo "------Nice/Renice Operation------"
  echo "1. start a process with a nice value"
  echo "2. change priority using renice"

  read -p "enter your choice:" option
case $option in
 1)
   nice -n 5 sleep 60 &
   echo -e "\e[32mProcess started with nice value 5.\e[0m"
   echo "[$(date '+%Y-%m-%d %H:%M:%S')] Started process with nice value 5." >> logs/toolkit.log
   ;;
2)
  read -p "Enter process ID(PID):" pid
  read -p "Enter new priority(-20 to 19):" value
  if renice "$value" -p "$pid"; then
    echo -e "\e[32mPriority changed successfully.\e[0m"
    echo "[$(date '+%Y-%m-%d %H:%M:%S')] Changed priority of PID $pid to $value." >> logs/toolkit.log
  else
    echo -e "\e[31mFailed to change priority.\e[0m"
  fi
  ;;
*)
 echo -e "\e[31mInvalid choice.\e[0m"
 ;;
esac 
 read -p "Press Enter to continue..."
} 

#!/bin/bash
user_creation(){
   echo "------User Creation-------"
   read -p "Enter new username:" username
   if id "$username" >/dev/null 2>&1; then
    echo -e "\e[33mUser already exists.\e[0m" 
   else
     if sudo useradd "$username"; then
       echo -e "\e[32mUser created successfully.\e[0m"
       echo "[$(date '+%Y-%m-%d %H:%M:%S')] User $username created successfully." >> logs/toolkit.log
     else
       echo -e "\e[31mFailed to create user.\e[0m"
     fi
   fi
   read -p "Press Enter to continue..."
}

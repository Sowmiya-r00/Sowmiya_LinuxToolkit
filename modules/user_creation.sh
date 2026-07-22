#!/bin/bash
user_creation(){
   echo "------User Creation-------"
   read -p "Enter new username:" username
<<<<<<< HEAD

   if id "$username" >/dev/null 2>&1; then
      echo -e "\e[33mUser '$username' already exists. No changes required.\e[0m"
      echo "[$(date '+%Y-%m-%d %H:%M:%S')] User $username already exists. No action taken." >> logs/toolkit.log
      read -p "Press Enter to continue..."
      return
   fi

   if $VERBOSE; then
      echo "Creating user '$username'..."
   fi

   if sudo useradd "$username"; then
      echo -e "\e[32mUser created successfully.\e[0m"
      echo "[$(date '+%Y-%m-%d %H:%M:%S')] User $username created successfully." >> logs/toolkit.log
   if $VERBOSE; then
      echo "User '$username' created successfully."
   fi
  else
      echo -e "\e[31mFailed to create user.\e[0m"
   fi

=======
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
>>>>>>> 5789e8a3c185b17603bf8b19b71521e528d7bdfd
   read -p "Press Enter to continue..."
}

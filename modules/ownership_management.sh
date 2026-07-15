#!/bin/bash
ownership_management(){
    echo "-------Ownership Management------"
    read -p "enter file name:" file
    read -p "Enter new owner username:" owner

    if id "$owner" >/dev/null 2>&1; then
       if sudo chown "$owner" "$file"; then
         echo -e "\e[32mOwnership changed successfully.\e[0m"
         echo "[$(date '+%Y-%m-%d %H:%M:%S')] Ownership changed for $file to $owner." >> logs/toolkit.log
       else
           echo -e "\e[31mFailed to change ownership.\e[0m"
       fi
   else
     echo -e "\e[31mUser does not exist.\e[0m"
   fi
   read -p "Press Enter to continue..."
}

#!/bin/bash
permission_management(){
     echo "-------Permission Management-------"
     read -p "Enter file name:" file
     read -p "Enter permission(e.g.,755):" perm

     if [[ ! "$perm" =~ ^[0-7]{3}$ ]]; then
         echo "invalid permission! Enter a 3-digit value like 755."
         read -p "Press Enter to continue..."
         return
       fi
       if chmod "$perm" "$file"; then
         echo -e "\e[32mPermission changed successfully.\e[0m"
         echo "[$(date '+%Y-%m-%d %H:%M:%S')] Permission changed for $file to $perm." >> logs/toolkit.log
       else
         echo -e "\e[31mFailed to change permission.\e[0m"
       fi
       read -p "Press Enter to continue..."
}
         

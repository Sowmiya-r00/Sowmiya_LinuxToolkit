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
<<<<<<< HEAD

      current_perm=$(stat -c "%a" "$file")

    if [[ "$current_perm" == "$perm" ]]; then
        echo -e "\e[33mPermission is already set to $perm. No changes required.\e[0m"
        read -p "Press Enter to continue..."
        return
      fi

       if $VERBOSE; then
          echo "Changing permission of '$file' from $current_perm to $perm..."
       fi

=======
>>>>>>> 5789e8a3c185b17603bf8b19b71521e528d7bdfd
       if chmod "$perm" "$file"; then
         echo -e "\e[32mPermission changed successfully.\e[0m"
         echo "[$(date '+%Y-%m-%d %H:%M:%S')] Permission changed for $file to $perm." >> logs/toolkit.log
       else
         echo -e "\e[31mFailed to change permission.\e[0m"
       fi
       read -p "Press Enter to continue..."
}
<<<<<<< HEAD

=======
         
>>>>>>> 5789e8a3c185b17603bf8b19b71521e528d7bdfd

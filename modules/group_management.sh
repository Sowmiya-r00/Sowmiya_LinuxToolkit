#!/bin/bash
group_management(){
    echo "------Group Management------"
    echo "Group available in the system"
    cut -d: -f1 /etc/group


    read -p "enter user name:" user
    read -p "enter group name:" group
    if ! getent group "$group" >/dev/null; then
      echo -e "\e[31mGroup does not exist.\e[0m"
    elif sudo usermod -aG "$group" "$user"; then
      echo -e "\e[32mUser added to the group successfully.\e[0m"
      echo "[$(date '+%Y-%m-%d %H:%M:%S')] User $user added to group $group." >> logs/toolkit.log
    else
      echo -e "\e[31mFailed to add user to the group.\e[0m"
    fi
    read -p "Press Enter to continue..."
}

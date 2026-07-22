#!/bin/bash

group_creation() {
    echo "------ Group Creation ------"

    read -p "Enter new group name: " group

    if [ -z "$group" ]; then
        echo -e "\e[31mGroup name cannot be empty.\e[0m"
        read -p "Press Enter to continue..."
        return
    fi

<<<<<<< HEAD
    # Idempotent check
    if getent group "$group" >/dev/null; then
        echo -e "\e[33mGroup '$group' already exists. No changes required.\e[0m"
        echo "[$(date '+%Y-%m-%d %H:%M:%S')] Group $group already exists. No action taken." >> logs/toolkit.log
        read -p "Press Enter to continue..."
        return
    fi

    if $VERBOSE; then
    echo "Creating group '$group'..."
    fi

    if sudo groupadd "$group"; then
        echo -e "\e[32mGroup created successfully.\e[0m"
        echo "[$(date '+%Y-%m-%d %H:%M:%S')] Group $group created successfully." >> logs/toolkit.log
    if $VERBOSE; then
        echo "Group '$group' created successfully."
    fi 
    else
        echo -e "\e[31mFailed to create group.\e[0m"
=======
    if getent group "$group" >/dev/null; then
        echo -e "\e[33mGroup already exists.\e[0m"
    else
        if sudo groupadd "$group"; then
            echo -e "\e[32mGroup created successfully.\e[0m"
            echo "[$(date '+%Y-%m-%d %H:%M:%S')] Group $group created successfully." >> logs/toolkit.log
        else
            echo -e "\e[31mFailed to create group.\e[0m"
        fi
>>>>>>> 5789e8a3c185b17603bf8b19b71521e528d7bdfd
    fi

    read -p "Press Enter to continue..."
}

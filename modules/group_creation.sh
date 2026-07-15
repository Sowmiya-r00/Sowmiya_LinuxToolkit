#!/bin/bash

group_creation() {
    echo "------ Group Creation ------"

    read -p "Enter new group name: " group

    if [ -z "$group" ]; then
        echo -e "\e[31mGroup name cannot be empty.\e[0m"
        read -p "Press Enter to continue..."
        return
    fi

    if getent group "$group" >/dev/null; then
        echo -e "\e[33mGroup already exists.\e[0m"
    else
        if sudo groupadd "$group"; then
            echo -e "\e[32mGroup created successfully.\e[0m"
            echo "[$(date '+%Y-%m-%d %H:%M:%S')] Group $group created successfully." >> logs/toolkit.log
        else
            echo -e "\e[31mFailed to create group.\e[0m"
        fi
    fi

    read -p "Press Enter to continue..."
}

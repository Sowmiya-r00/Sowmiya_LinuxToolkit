#!/bin/bash
process_monitoring() {
    echo "------ Process Monitoring ------"
    echo "1. Show all running processes"
    echo "2. Show top processes"

    read -p "Enter your choice: " option

    case $option in
        1)
            ps -ef
            echo "[$(date '+%Y-%m-%d %H:%M:%S')] Displayed all running processes." >> logs/toolkit.log
            ;;
        2)
           echo "[$(date '+%Y-%m-%d %H:%M:%S')] Displayed top processes." >> logs/toolkit.log
            top
            ;;
        *)
            echo -e "\e[31mInvalid choice.\e[0m"
            ;;
    esac

    read -p "Press Enter to continue..."
}

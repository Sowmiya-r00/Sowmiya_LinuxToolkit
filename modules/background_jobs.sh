#!/bin/bash
background_jobs() {
    echo "------ Background Job Management ------"
    echo "1. Start a background job"
    echo "2. View background jobs"

    read -p "Enter your choice: " option

    case $option in
        1)
            sleep 60 &
            echo -e "\e[32mBackground job started.\e[0m"
            echo "[$(date '+%Y-%m-%d %H:%M:%S')] Background job started." >> logs/toolkit.log
            ;;
        2)
            echo -e "\e[32mDisplaying background jobs...\e[0m"
            jobs
            echo "[$(date '+%Y-%m-%d %H:%M:%S')] Displayed background jobs." >> logs/toolkit.log
            ;;
        *)
            echo -e "\e[31mInvalid choice.\e[0m"
            ;;
    esac

    read -p "Press Enter to continue..."
}

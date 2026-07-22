#!/bin/bash
<<<<<<< HEAD

VERBOSE=false

if [[ "$1" == "--verbose" ]]; then
    VERBOSE=true
fi

=======
>>>>>>> 5789e8a3c185b17603bf8b19b71521e528d7bdfd
source modules/permission_management.sh
source modules/ownership_management.sh
source modules/group_management.sh
source modules/display_umask.sh
source modules/user_creation.sh
source modules/group_creation.sh
source modules/process_monitoring.sh
source modules/process_termination.sh
source modules/nice_renice.sh
source modules/background_jobs.sh
while true
do
    clear
    echo "================================================="
    echo "Linux User and Process Management Toolkit"
    echo "================================================="
    echo "1. Permission Management"
    echo "2. Ownership Management"
    echo "3. Group Management"
    echo "4. Display Umask"
    echo "5. User Creation"
    echo "6. Group Creation"
    echo "7. Process Monitoring"
    echo "8. Process Termination"
    echo "9. Nice/Renice Operations"
    echo "10. Background Job Management"
    echo "11. Exit"
    echo "================================================="

    read -p "Enter Your Choice:" choice

    case $choice in
        1)
           permission_management
           ;;
        2)
           ownership_management
           ;;
        3)
           group_management
           ;;

        4)
          display_umask
          ;;
        5)
          user_creation
          ;;
        6)
          group_creation
          ;;
        7)
          process_monitoring
          ;;
        8)
          process_termination
          ;;
        9)
          nice_renice
          ;;
       10)
          background_jobs
          ;;
       11)
           echo "Exiting Toolkit..."
           break
           ;;
        *)
          echo "This module will be added later."
          read -p "Press Enter to continue..."
          ;;
    esac
done

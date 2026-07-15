#!/bin/bash
process_termination(){
  echo "------Process Termination------"
  read -p "Enter process ID(PID):" pid
  if kill "$pid" 2>/dev/null; then
     echo -e "\e[32mProcess terminated successfully.\e[0m"
     echo "[$(date '+%Y-%m-%d %H:%M:%S')] Process with PID $pid terminated." >> logs/toolkit.log
  else
     echo -e "\e[31mInvalid PID or process not found.\e[0m"
  fi
   read -p "Press Enter to continue..."
}

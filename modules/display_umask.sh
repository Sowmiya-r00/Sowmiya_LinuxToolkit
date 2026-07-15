#!/bin/bash
display_umask() {
    echo "------ Current UMASK ------"
    echo "[$(date '+%Y-%m-%d %H:%M:%S')] Current umask displayed: $(umask)." >> logs/toolkit.log
    umask
    read -p "Press Enter to continue..."
}

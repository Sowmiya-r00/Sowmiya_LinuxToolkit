# Documentation

# Linux User and Process Management Toolkit

## Introduction
The Linux User and Process Management Toolkit is a Bash Shell Scripting project developed to perform common Linux administration tasks through a
simple menu-driven interface. The toolkit combines multiple modules into a single program, making system management easier and more organized.

## Objective
- To automate Linux administration tasks using Bash scripting.
- To manage users, groups, permissions, and processes.
- To understand Linux system commands through practical implementation.

## Software Requirements
- Ubuntu Linux
- Bash Shell
- VirtualBox
- Nano Text Editor

## Project Modules

### 1. Permission Management
Changes file or directory permissions using the `chmod` command.

### 2. Ownership Management
Changes the owner of a file using the `chown` command.

### 3. Group Management
Adds a user to an existing group using the `usermod` command.

### 4. Display Umask
Displays the current default permission mask using the `umask` command.

### 5. User Creation
Creates a new Linux user using the `useradd` command.

### 6. Group Creation
Creates a new group using the `groupadd` command.

### 7. Process Monitoring
Displays running processes using the `ps` and `top` commands.

### 8. Process Termination
Terminates a running process using its Process ID (PID) with the `kill` command.

### 9. Nice/Renice Operations
Changes the priority of running processes using the `nice` and `renice` commands.

### 10. Background Job Management
Starts background jobs and displays active background jobs using the `jobs` command.

## Execution
1. Open the terminal.
2. Navigate to the project folder.
3. Run: chmod +x main.sh
        ./main.sh
4. Select a menu option and follow the instructions displayed on the screen.

## Result
The toolkit successfully performs Linux user management, permission management, group management, process monitoring, and background job management 
through an interactive menu.

## Conclusion
This project improves understanding of Bash Shell Scripting and Linux administration commands. It provides practical experience in managing users,
groups, file permissions, and system processes in Ubuntu Linux.

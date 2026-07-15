## Linux User and Process Management Toolkit

Author: Sowmiya R
College: Dr.N.G.P.Arts Science College,Coimbatore
Program: BCA
Internship: EduPyramids,SINE,IIT Bombay
Date: July 2026

## Project Overview

The Linux User and Process Management Toolkit is a shell scripting project developed using Bash. It provides an interactive menu-driven interface to perform common Linux
administration tasks such as permission management, ownership management, group management, user and group creation, process monitoring,process termination, nice/renice operations,
background job management, and displaying the current umask.

## Objectives

* To learn Bash shell scripting.
* To automate common Linux administration tasks.
* To understand Linux user and process management.
* To develop a menu-driven command-line application.
* To improve Linux command and scripting skills.

## Software Prerequisites

* Ubuntu Linux 24.04 LTS
* Bash Shell
* Oracle VirtualBox
* Nano Text Editor
* Terminal
* Root (sudo) privileges for administrative operations

## Folder Structure

LinuxToolkit/
├── README.md
├── main.sh
├── modules/
│   ├── permission_management.sh
│   ├── ownership_management.sh
│   ├── group_management.sh
│   ├── display_umask.sh
│   ├── user_creation.sh
│   ├── group_creation.sh
│   ├── process_monitoring.sh
│   ├── process_termination.sh
│   ├── nice_renice.sh
│   └── background_jobs.sh
├── logs/
│   └── toolkit.log
├── screenshots/
│   ├── option1.png
│   ├── option2.png
│   ├── option3.png
│   ├── option4.png
│   ├── option5.png
│   ├── option6.png
│   ├── option7.png
│   ├── option8.png
│   ├── option9.png
│   └── option10.png
├── documentation/
│
├── testcases
│ 
└── reports

## Installation Steps

1. Copy the project folder to Linux system.
2. Open Terminal.
3. Navigate to the project folder : cd LinuxToolkit
4. Grant execute permission       : chmod +x main.sh
5. Run the project                : ./main.sh

## Usage Instructions
1. Run main.sh.
2. Select the required option from the menu.
3. Enter the requested inputs.
4. View the output.
5. Repeat until selecting Exit.

## Description of Every Module

1. Permission Management

Changes file permissions using the chmod command.

2. Ownership Management

Changes file ownership using the chown command.

3. Group Management

Adds an existing user to an existing group using the usermod command.

4. Display Current Umask

Displays the current user umask using the umask command.

5. User Creation

Creates a new Linux user using the useradd command.

6. Group Creation

Creates a new Linux group using the groupadd command.

7. Process Monitoring

Displays currently running processes using the ps command.

8. Process Termination

Terminates a running process using the kill command.

9. Nice/Renice Operations

Starts a process with a nice value or changes the priority of an existing process using nice and renice.

10. Background Job Management

Starts a background job and displays background jobs using the jobs command.

## Sample Outputs

------ Permission Management ------
Enter file name: test.txt
Enter permission (e.g., 755): 755
Permission changed successfully.

------ Ownership Management ------
Enter file name: test.txt
Enter new owner: sowmiyaramu
Ownership changed successfully.

------ Group Management ------
Enter username: sow
Enter group name: exam
User added to the group successfully.

------ Display Current Umask ------
Current Umask: 0002

------ User Creation ------
Enter new username: student1
User created successfully.

------ Group Creation ------
Enter new group name: exam
Group created successfully.

------ Process Monitoring ------
PID      COMMAND
1456     bash
2345     sleep
3456     firefox

------ Process Termination ------
Enter Process ID (PID): 4567
Process terminated successfully.

------ Nice/Renice Operations ------
Enter Process ID (PID): 4567
Enter new priority: 5
4567 (process ID) old priority 0, new priority 5

------ Background Job Management ------
1. Start a background job
2. View background job

Enter your choice: 1
Background job started.

1. Start a background job
2. View background jobs

Enter your choice: 2
[1]+ Running sleep 60 &

## Learning Outcomes

-Learned Bash shell scripting.
-Understood Linux file permissions.
-Learned user and group management.
-Understood process monitoring and termination.
-Learned background job management.
-Gained practical experience with Linux administration commands.

## References

-Linux Manual Pages (man chmod, man chown, man useradd, man groupadd)
-GNU Bash manual
-Ubuntu Documentation
-Linux Command Line Documentation
-Spoken Tutorial Project,IIT Bombay

# !/bin/bash

# MY FIRST SHELL SCRIPT [ABOUTME]
# This shell script give some information about the owner who is a computer science student at CCSF,
## hills system and the owner's files and directories information on hills account.
# Written by; Perihan Sahan
# Last Modified; March 7, 2017

#Step1--Welcome message from the owner
echo
echo -n Hello from
pinky -l $LOGNAME | head -n 1 | cut -d: -f3

echo

##Step2--Information about how many classes are being taken by the owner in this semester.
classes=$(groups | tr " " "\n" | grep "^c" | wc -l)
echo "You are taking $classes classes this semester."

echo

###Step3
#Part1 - Output of the host you are logged in on.
echo "You are currently logged onto $HOSTNAME system."

echo

#Part2--Output for how long the system has been running,how many users are currently logged in
##  --- and the current one-minute load average of the host.

echo "The system has been up $(uptime | cut -c 11-27) hours."
echo
echo "There are $(users | wc -w) users logged on."
echo
echo The current one minute $(uptime | cut -d ',' -f4)
echo

####Step4--The directories in your search path(in order)
path=$(echo $PATH | tr ":" "\n")
echo "The directories in your search path:"
echo "$path"

echo

#####Step5--Your terminal type
echo Your terminal type is "$TERM".

echo

######Step6
#Part1--How much disk space is consuming in your home directory
echo "Here is the space utilization of your home directory in kiB:"
echo $(du -sk ~)

echo 

##Part2--How many files and directories your home directory has beneath it
echo "Your home directory contains $(find ~ -type d | wc -l) directories and $(find ~ -type f | wc -l) files."

echo


#!/bin/bash

##############################################
# This script demonstrates various Linux commands
# and their usage. It covers tasks related to
# working with directories, files, system
# information, and more.
##############################################

# Display current date
date

# Working with directories
echo "Working with directories"

# Display current directory path
pwd

# Create a new directory called "MyDir"
mkdir MyDir

# Change directory to MyDir
cd MyDir

# Create multiple directories
mkdir MyDir1 MyDir2 _directory

# List files and directories
ls

# Remove directory MyDir1
rm -r MyDir1

# List files and directories
ls

# Change the current directory to MyDir2
cd MyDir2

# Display current directory path
pwd

# Go to parent directory
cd ..

# Display current directory path
pwd

# List files and directories
ls

# Change directory to directory3
cd _directory

# Go to previous directory
cd -

# Explain the current directory's relative path
tree

# List all files and subdirectories of the current directory
ls

# List all files and subdirectories of the current directory including hidden files
ls -a

# List all files and subdirectories of the current directory with permissions
ls -l

# List all files and subdirectories of the current directory including hidden files with permissions
ls -la

# Remove MyDir2 directory
rmdir MyDir2

# Remove MyDir2 directory
rmdir _directory

# Go to parent directory
cd ..

# Try to remove MyDir without recursively and see that MyDir will not be removed.
# If a directory is not empty, “rmdir -r” command should be used.
rmdir MyDir
# Remove MyDir directory recursively which will also remove directory3 directory
rm -r MyDir

# Create MyDir directory with test and NewFolder subdirectories
mkdir -p MyDir/test/NewFolder

# Change directory to MyDir
cd MyDir

# Display directory structure. NewFolder directory is the subfolder of test directory.
tree

# Go to home directory
cd ~

# Recursively remove directories
rmdir -p MyDir/test/NewFolder

# Create multiple directories
mkdir MyDir MyDir1 MyDir2

# Change the directory to MyDir
cd MyDir

# Remove everything under the current directory
rm -r ./*

# Go to home directory
cd ~

cd Mydir

# Working with files
echo "Working with files"

# Create a file.txt file
echo "This is a test file." > file.txt

# Create a text file with cat command
cat > summer.txt <<EOF
Hello Summer and Sunshine!
2nd of July
*****
2345
EOF

# Create a text file with touch command
touch july4th.txt
echo "Happy 4th of July" >> july4th.txt

# Search for files with .txt extension and print their names
find . -type f -name "*.txt" -print

# Count the number of lines in a file
wc -l summer.txt

# Copy a file to a new location
cp file.txt newfile.txt

# Rename a file
mv newfile.txt renamedfile.txt

# Display disk usage for the current directory
du -sh

# Display system information
uname -a

# Display process information
# ps aux

# Sort and display contents of a file
sort summer.txt

# Display the last 10 lines of a file
tail -n 10 summer.txt

# Compress a directory into a tar archive
mkdir directory
cd directory
echo "Creating a test file." > file1.txt
echo "Creating another test file." > file2.txt
cd ..
tar -czf archive.tar.gz directory/
chmod +x archive.tar.gz
ls

# Extract files from a tar archive
tar -xzf archive.tar.gz

# Display available disk space
df -h

# Find and delete empty directories
mkdir empty-directory
ls -l
find . -type d -empty -delete
ls -l

# List the 10 largest files in the current directory
du -ah | sort -rh | head -n 10

# Display file permissions in octal format
stat -f "%p %N" *

ls -la

# Display file size in human-readable format
ls -lh

# Find files modified in the last 24 hours
find . -type f -mtime -1

# Print the first 5 lines of a file
head -n 5 summer.txt

# Archive files older than 30 days
find . -type f -mtime +30 | xargs tar -czf old_files.tar.gz

# Show the difference between two files
diff file1.txt file2.txt

# Search for a specific string in files
grep "Sunshine" summer.txt

# Append text to a file
echo "Additional line of text" >> file.txt

# Display the file size in bytes
du -b file.txt

# Check if a file exists
if [ -e file.txt ]; then
  echo "file.txt exists"
fi

# Check if a directory exists
if [ -d directory ]; then
  echo "directory exists"
fi

# Find files owned by a specific user
# find . -user username
find . -user perihansahan

# Set file permissions
chmod 755 file.txt

# Create a symbolic link to a file
ln -s file.txt link.txt

# Display the current username
whoami

# Show the current path variable
echo $PATH

# Check if a command is available
if command -v ls >/dev/null 2>&1; then
  echo "ls command is available"
fi

# Display the current user ID
id -u

# Display current time
echo "Current time: $(date +%T)"

# Display current system load average
echo "System load average: $(uptime | awk '{print $10}')"

# Generate a random password
echo "Random password: $(openssl rand -base64 12)"

# Generate a hash value of a file
echo "Hash value of file.txt: $(shasum -a 256 file.txt)"

# Display CPU information
# cat /proc/cpuinfo
# For MacOS: 
sysctl -n machdep.cpu.brand_string

# Check network connectivity
ping -c 5 google.com

# Exit the script
exit

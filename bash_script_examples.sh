# The provided bash shell code performs a series of tasks. 
# Firstly, it displays a welcome message and prompts the user to enter their name and age. 
# It then checks if the user is an adult based on their age input. 
# The script lists files in the current directory and creates a new directory called "my_directory." 
# Next, it displays the current date and time. Following that, it creates three files with default content using a loop. 
# The script then showcases various examples such as copying files with permissions, renaming a directory, deleting files and directories, and more. 
# It covers a wide range of topics including loops, conditional statements, file handling, string manipulation, command line arguments, error handling, etc. 
# Finally, it concludes with an exit message.

#!/bin/bash

# Welcome message
echo "Welcome to the Bash Script!"

# Get user's name
echo -n "Please enter your name: "
read name

# Greet the user
echo "Hello, $name!"

# Get user's age
echo -n "Please enter your age: "
read age

# Check if the user is an adult
if ((age >= 18)); then
    echo "You are an adult."
else
    echo "You are not yet an adult."
fi

# List files in the current directory
echo "Files in the current directory:"
ls

# Create a new directory
mkdir my_directory
echo "Created directory: my_directory"

# Display the current date and time
current_date=$(date +"%Y-%m-%d")
current_time=$(date +"%H:%M:%S")
echo "Current date: $current_date"
echo "Current time: $current_time"

# Array of filenames
filenames=("file1.txt" "file2.txt" "file3.txt")
# Loop through the filenames array
for filename in "${filenames[@]}"; do
    # Create the file with a default content
    echo "Hello, $filename" > "$filename"
done

# Copying Files with Permissions
cp -p source.txt destination.txt

# Renaming a Directory
mv old_dir new_dir

# Deleting Files and Directories
rm file.txt
rm -r directory

# Example 1: For Loop 
for i in {1..5}; do
    echo "Iteration $i"
done

# Example 2: Conditional Statement (if-else)
count=10
if ((count > 0)); then
    echo "Count is positive."
else
    echo "Count is zero or negative."
fi

# Example 3: Command Substitution
current_date=$(date +"%Y-%m-%d")
echo "Current date: $current_date"

# Example 4: Functions
greet() {
    echo "Hello, $1!"
}
greet "John"

# Example 5: Reading Input from User
echo -n "Enter your age: "
read age
echo "You entered: $age"

# Example 6: File Handling
filename="my_file.txt"
if [ -f "$filename" ]; then
    echo "$filename exists."
else
    echo "$filename does not exist."
fi

# Example 7: String Manipulation
name="John Doe"
echo "Length of name: ${#name}"
echo "Uppercase name: ${name^^}"
echo "Lowercase name: ${name,,}"

# Example 8: Command Line Arguments
echo "Script name: $0"
echo "First argument: $1"
echo "All arguments: $@"

# Example 9: Exit Codes
command_that_may_fail
if [ $? -eq 0 ]; then
    echo "Command executed successfully."
else
    echo "Command failed."
fi

# Example 10: Arithmetic Operations
x=5
y=3
sum=$((x + y))
echo "Sum: $sum"

# Example 11: Conditional Execution
command1 && command2  # Executes command2 only if command1 succeeds
command1 || command2  # Executes command2 only if command1 fails

# Example 12: Redirecting Output
ls > file_list.txt  # Redirects the output of ls command to a file

# Example 13: Process Substitution
diff <(sort file1.txt) <(sort file2.txt)  # Compares sorted content of two files

# Example 14: Arrays
fruits=("Apple" "Banana" "Orange")
echo "First fruit: ${fruits[0]}"
echo "All fruits: ${fruits[@]}"

# Example 15: Error Handling
set -e  # Exit immediately if any command fails
set -o pipefail  # Capture the exit status of the last command in a pipeline

# Example 16: Conditional File Operations
if [ -s "$filename" ]; then
    echo "$filename is not empty."
else
    echo "$filename is empty."
fi

# Example 17: Looping over Files
for file in *.txt; do
    echo "Processing $file"
done

# Example 18: Case Statement
fruit="Apple"
case $fruit in
    "Apple")
        echo "It's an apple."
        ;;
    "Banana")
        echo "It's a banana."
        ;;
    *)
        echo "Unknown fruit."
        ;;
esac

# Example 19: Sleeping
echo "Sleeping for 5 seconds..."
sleep 5

# Example 20: Command Substitution with Process Substitution
cat <(ls -l) <(ls -a)

# Example 21: String Comparison
string1="Hello"
string2="World"
if [ "$string1" == "$string2" ]; then
    echo "Strings are equal."
else
    echo "Strings are not equal."
fi

# Example 22: Debugging
set -x  # Enable debugging mode
# Debugging statements
set +x  # Disable debugging mode

# Example 23: Trap Signals
trap 'cleanup' INT TERM EXIT
cleanup() {
    echo "Cleaning up..."
    # Perform cleanup operations here
}

# Example 24: Calculating Execution Time
start_time=$(date +%s)
# Code to measure execution time
end_time=$(date +%s)
execution_time=$((end_time - start_time))
echo "Execution time: $execution_time seconds"

# Example 25: Running Commands in Background
command1 &
command2 &

# Example 26: Checking Internet Connectivity
ping -c 1 google.com >/dev/null 2>&1
if [ $? -eq 0 ]; then
    echo "Internet connection available."
else
    echo "No internet connection."
fi

# Example 27: Running a Command Repeatedly
while true; do
    # Code to execute repeatedly
    sleep 1
done

# Example 28: Reading Lines from a File
while IFS= read -r line; do
    echo "Line: $line"
done < input.txt

# Example 29: Creating a Menu
while true; do
    echo "Menu:"
    echo "1. Option 1"
    echo "2. Option 2"
    echo "3. Exit"
    read -p "Enter your choice: " choice
    case $choice in
        1)
            echo "Option 1 selected."
            ;;
        2)
            echo "Option 2 selected."
            ;;
        3)
            echo "Exiting..."
            exit 0
            ;;
        *)
            echo "Invalid choice."
            ;;
    esac
done

# Example 30: Creating a Backup
backup_dir="backup_$(date +"%Y%m%d_%H%M%S")"
mkdir "$backup_dir"
cp -r source_dir/* "$backup_dir"

# Example 31: Checking if a File is Readable
filename="file.txt"
if [ -r "$filename" ]; then
    echo "$filename is readable."
else
    echo "$filename is not readable."
fi

# Example 32: Renaming Multiple Files
for file in file*.txt; do
    new_name="new_${file}"
    mv "$file" "$new_name"
done

# Example 33: Counting Files in a Directory
file_count=$(ls -1 | wc -l)
echo "Number of files in the directory: $file_count"

# Example 34: Extracting Filename and Extension
filename="file.txt"
base_name="${filename%.*}"
extension="${filename##*.}"
echo "Base name: $base_name"
echo "Extension: $extension"

# Example 35: File Permissions in Symbolic Form
filename="file.txt"
permissions=$(stat -c "%A" "$filename")
echo "File permissions: $permissions"

# Example 36: File Ownership
filename="file.txt"
owner=$(stat -c "%U" "$filename")
group=$(stat -c "%G" "$filename")
echo "Owner: $owner"
echo "Group: $group"

# Example 37: Check if a File is Executable
filename="script.sh"
if [ -x "$filename" ]; then
    echo "$filename is executable."
else
    echo "$filename is not executable."
fi

# Example 38: Finding and Replacing Text in a File
search="old_text"
replace="new_text"
sed -i "s/$search/$replace/g" file.txt

# Example 39: Compressing Files using gzip
gzip file.txt

# Example 40: Counting Words in a File
word_count=$(wc -w file.txt | awk '{print $1}')
echo "Number of words in file.txt: $word_count"

# Example 41: Removing Duplicate Lines from a File
sort file.txt | uniq > file_without_duplicates.txt

# Example 42: Checking File Size
file_size=$(stat -c "%s" file.txt)
echo "File size: $file_size bytes"

# Example 43: Searching for Files by Name
search_term="example"
find . -name "*$search_term*"

# Example 44: Checking if a Directory Exists
directory="my_directory"
if [ -d "$directory" ]; then
    echo "$directory exists."
else
    echo "$directory does not exist."
fi

# Example 45: Creating a Soft Link
target_file="file.txt"
link_name="file_link"
ln -s "$target_file" "$link_name"

# Example 46: Sorting Files by Last Modified Date
ls -lt

# Example 47: Checking Disk Usage per Directory
du -sh *

# Example 48: Listing Running Processes
ps aux

# Example 49: Checking System Memory Usage
free -h

# Example 50: Calculating File Hash (MD5)
md5sum file.txt

# Example 51: Searching for Files by Name
filename="example.txt"
find /path/to/search -name "$filename"

# Example 52: Checking Network Connectivity
ping -c 4 google.com

# Example 53: Checking Disk Space Usage
df -h

# Example 54: Checking System Uptime
uptime

# Example 55: Searching for Text in Files
grep "search term" file.txt

# Example 56: Running a Command with Root Privileges 
sudo command_name

# Example 57: Checking File Type 
file document.pdf

# Example 58: Displaying System Information
uname -a

# Example 59: Compressing Files using Zip
zip archive.zip file1.txt file2.txt

# Example 60: Unzipping Files
unzip archive.zip

# Exit message
echo "Bash Script completed. Goodbye!"
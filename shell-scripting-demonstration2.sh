# To create multiple text files in a .sh shell script, you can use a combination of loops and file creation commands. 
# Here's an example that demonstrates creating three text files with different names:

#!/bin/bash

# Array of filenames
filenames=("file1.txt" "file2.txt" "file3.txt")

# Loop through the filenames array
for filename in "${filenames[@]}"; do
    # Create the file with a default content
    echo "Hello, $filename" > "$filename"
done

# In the above script, an array named filenames contains the names of the text files to be created. 
# The script then uses a for loop to iterate through each filename in the array. Within the loop, 
# it uses the echo command to write a default content into each file using the respective filename.


# To use this script:
# Open a text editor.
# Copy and paste the above code into the text editor.
# Save the file with a .sh extension, for example, create_files.sh.
# Open a terminal and navigate to the directory where you saved the .sh file.
# Make the script executable by running the command: chmod +x create_files.sh.
# Execute the script by typing ./create_files.sh in the terminal and pressing Enter.
# Upon running the script, it will create three text files (file1.txt, file2.txt, and file3.txt) in the same directory, 
# each with a different default content. Feel free to modify the filenames or customize the content inside the loop as per your requirements.

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

# Example 1: For Loop -Iterates over a sequence of numbers from 1 to 5 (inclusive) 
# Prints the message "Iteration" followed bt the value of 'i'
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
# Using 'date' command in Linux and assings it to the variable 'current_date'
# Prints the string "Current date:" + followed by the current_date variable value. 
# For ex: "Current date:2023-07-05"
current_date=$(date +"%Y-%m-%d")
echo "Current date: $current_date"

# Example 4: Functions
# The given code defines a functoin name 'greet' that takes one argument. 
# Calls greet() function to print the string "Hello, John!"
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


# Exit message
echo "Bash Script completed. Goodbye!"



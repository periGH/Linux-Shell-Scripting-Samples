# Linux-Shell-Scripting-Samples
This repository contains linux/shell scripting commands. 

#### linux_commands_demonstration.sh 

This bash script demonstrates various Linux commands and their usage. It covers tasks related to working with directories, files, system information, and more. Here's a breakdown of what the script does:

- It starts with a brief description of the script's purpose.
- It displays the current date.
- It demonstrates working with directories, including creating directories, changing directories, listing files and directories, and removing directories.
- It explores working with files, such as creating files, searching for files with specific extensions, counting lines in a file, copying and renaming files, displaying disk usage, displaying system and process information, sorting and displaying file contents, compressing and extracting files, finding and deleting empty directories, listing large files, displaying file permissions and sizes, finding files modified within a certain timeframe, and more.
- It includes additional commands like creating symbolic links, displaying system information like CPU details, checking network connectivity, generating random passwords and file hash values, and more.
Finally, it exits the script.

Overall, the script serves as a practical demonstration of various Linux commands and their applications for managing directories, files, system information, and performing common tasks in a Linux environment.

#### bash_script_examples.sh 

Here's a summary of what the bash script does, explained in bullet points:
- Displays a welcome message to the user.
- Prompts the user to enter their name and stores it in a variable.
- Greets the user with a personalized message using their name.
- Prompts the user to enter their age and stores it in a variable.
- Checks if the user is an adult based on their age and provides an appropriate message.
- Lists the files in the current directory.
- Creates a new directory named "my_directory".
- Displays the current date and time.
- Creates three files with default content using an array of filenames.
- Copies a file with permissions from "source.txt" to "destination.txt".
- Renames a directory from "old_dir" to "new_dir".
- Deletes a file named "file.txt" and a directory named "directory".
- Demonstrates a for loop, iterating five times and displaying an iteration message.
- Demonstrates a conditional statement (if-else), checking if a variable "count" is positive.
- Demonstrates command substitution by displaying the current date.
- Defines and calls a function "greet" that takes a parameter and greets the person.
- Prompts the user to enter their age again and displays the entered age.
- Checks if a file named "my_file.txt" exists and provides a corresponding message.
- Demonstrates string manipulation by displaying the length, uppercase, and lowercase versions of a name.
- Displays information about the script's name, first argument, and all arguments.
- Checks the exit status of a command and provides a success or failure message.
- Performs arithmetic operations and displays the sum of two numbers.
- Demonstrates conditional execution using the "&&" and "||" operators.
- Redirects the output of the "ls" command to a file named "file_list.txt".
- Compares the sorted content of two files using process substitution.
- Demonstrates the usage of arrays by defining an array of fruits and displaying the first fruit and all fruits.
- Enables error handling by setting flags and capturing the exit status of commands.
- Checks if a file named "my_file.txt" is empty and provides a corresponding message.
- Loops over files with the "*.txt" pattern and displays a processing message for each file.
- Uses a case statement to identify the type of fruit based on a variable value.
- Pauses the script execution for 5 seconds using the "sleep" command.
- Demonstrates command substitution with process substitution by concatenating the outputs of two commands.
- Compares two strings and provides a message based on their equality.
- Enables and disables the debugging mode for troubleshooting.
- Sets up a trap for signals, performs cleanup operations when the script is terminated.
- Measures the execution time of a code block.
- Runs commands in the background using the "&" operator.
- Checks internet connectivity by pinging Google and provides a corresponding message.
- Runs a command repeatedly in an infinite loop with a 1-second delay.
- Reads and processes each line from a file named "input.txt".
- Creates a menu with options, prompts the user for a choice, and performs actions based on the choice.
- Creates a backup directory with a timestamp and copies files from a source directory to the backup directory.
- Checks if a file named "file.txt" is readable and provides a corresponding message.
- Renames multiple files by adding a prefix "new_" to their names.
- Counts the number of files in the current directory and displays the count.
- Extracts the base name and extension from a filename.
- Retrieves and displays the file permissions, owner, and group of a file named "file.txt".
- Checks if a file named "script.sh" is executable and provides a corresponding message.
- Finds and replaces text in a file using the "sed" command.
- Compresses a file named "file.txt" using the gzip algorithm.
- Counts the number of words in a file named "file.txt".
- Removes duplicate lines from a file named "file.txt".
- Retrieves the size of a file named "file.txt" in bytes.
- Searches for files in the current directory with a specific search term.
- Checks if a directory named "my_directory" exists and provides a corresponding message.
- Creates a symbolic link (soft link) named "file_link" pointing to a target file "file.txt".
- Sorts files in the current directory by last modified date.
- Displays disk usage per directory in a human-readable format.
- Lists running processes using the "ps" command.
- Displays system memory usage using the "free" command.
Finally, the script displays a completion message before exiting.
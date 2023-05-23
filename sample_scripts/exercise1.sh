# Use variables, command substitution, and string formatting
# to make a small summary of some system information (system report).
# Print the result to the screen and write some information to a file.

#-----------------------------------SOLUTION------------------------------------

#!/usr/bin/env bash

#name of log file
declare log_file="sysreport.log"

# get date and time
declare timestamp=$(date)

# declare variables for text styling
declare red="\033[31m"
declare green="\033[32m"
declare bold="\033[1m"
declare normal="\033[0m"

declare log_entry=""
log_entry+="System report for ${red}${bold}$USER${normal} generated on ${green}${bold}$timestamp${normal}\n\n"
log_entry+="\t${bold}Machine Type${normal}\t$MACHTYPE\n"
log_entry+="\t${bold}Bash Version${normal}\t$BASH_VERSION\n"
log_entry+="\t${bold}Host Name${normal}\t$HOSTNAME\n"

echo -e $log_entry
echo -e $log_entry > $log_file
echo "open in a bash terminal" >> $log_file

echo -e "\n${green}${bold}This report has been saved to $PWD/$log_file${normal}\n\n"

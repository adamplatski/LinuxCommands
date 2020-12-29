#!/bin/bash
#!/bin/bash
#Lab 8
#Adam Plater
#040922567
#CST8102-301
#This script creates a program to automate user and group management commands

while [[ $choice  != "Q" ]] && [[ $choice  != "q" ]]         
do

        echo "Choose one of the following options:"
        echo "A: Create a user account"
        echo "B: Delete a user account"
        echo "C: Change supplementary group for a user account"
        echo "D: Change initial group for a user account"
        echo "E: Change default login shell for a user account"
        echo "F: Change account expiration date for a user account"
        echo "Q: Quit"

        read -p "What would you like to do?:" choice;
        echo "You entered $choice" 
        sleep 3

        if [ "$choice" = "a" ] || [ "$choice" = "A" ] ;
        then
                read -p "Enter the username: " username;
                read -p "Enter the users home directory: " home;
                read -p "Enter the default login shell: " shell;
                sudo useradd -d "$homedir" -m -s "$shell" "$username"


        elif [ "$choice" = "b" ] || [ "$choice" = "B" ];
        then
                read -p "Enter the usermame to delete: " username;
                sudo userdel -r "$username"

	        elif [ "$choice" = "c" ] || [ "$choice" = "C" ];
        then
                read -p "Enter the username: " username;
                read -p "Enter the supplementary group name: " group;
                sudo usermod -g "$group" "$username"


        elif [ "$choice" = "d" ] || [ "$choice" = "D" ];
        then
                read -p "Enter the username: " username;
                read -p "Enter the inital group name: " group;
                sudo usermod -g "$group" "$username"


        elif [ "$choice" = "e" ] || [ "$choice" = "E" ];
        then
                read -p "Enter the username: " username;
                read -p "Enter the login shell name: " shell;
                sudo usermod -s "$shell" "$username"


        elif [ "$choice" = "f" ] || [ "$choice" = "F" ];
        then
                read -p "Enter the username: " username;
                read -p "Enter the expiration date as YYYY-MM-DD: " date;
                sudo usermod -e "$date" "$username"

        fi
done






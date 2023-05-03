#!/bin/bash

# Define the main menu function
function main_menu() {
    clear
    echo "----------------------------------"
    echo " MAIN MENU"
    echo "----------------------------------"
    echo "1. Run Module 1"
    echo "2. Run Module 2"
    echo "3. Run Module 3"
    echo "4. Run Module 4"
    echo "0. Exit"
    echo
    echo "Please enter your choice: "
    read selection
    echo
}

# Define the actions for each menu option
function menu_options() {
    case $selection in
        1) 
            echo "Running Module 1"
            bash ./module/module1.sh
            ;;
        2) 
            echo "Running Module 2"
            bash ./module/module2.sh
            ;;
        3)
            echo "Running Module 3"
            bash ./module/module3.sh
            ;;
        4)
            echo "Running Module 4"
            bash ./module/module4.sh
            ;;
        0) 
            echo "Exiting the program"
            exit 0
            ;;
        *)
            echo "Invalid option"
            ;;
    esac
}

# Continuously display the main menu until the user chooses to exit
while true; do
    main_menu
    menu_options
done

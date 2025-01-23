#!/usr/bin/bash

# Banner Script Path
BANNER_FILE="$HOME/.REDZA-ON-FIRE"

# Profile File Path
BASHRC_FILE="$HOME/.bashrc"

# Fixed Username and Password (আপনার ইচ্ছামতো দিন)
correct_username="TEAM"
correct_password="REDZA"

# Create Banner Script if Not Exists
if [[ ! -f $BANNER_FILE ]]; then
    cat << 'EOF' > $BANNER_FILE
#!/usr/bin/bash
clear

# Banner
echo -e "\e[1;32m
██████╗ ███████╗██████╗ ███████╗ █████╗ 
██╔══██╗██╔════╝██╔══██╗╚══███╔╝██╔══██╗
██████╔╝█████╗  ██║  ██║  ███╔╝ ███████║
██╔══██╗██╔══╝  ██║  ██║ ███╔╝  ██╔══██║
██║  ██║███████╗██████╔╝███████╗██║  ██║
╚═╝  ╚═╝╚══════╝╚═════╝ ╚══════╝╚═╝  ╚═╝





# Developer Information
echo -e "\033[1;36m─────────────────────────────────────────────────────\033[0m"
echo -e "\033[1;33m★彡[ DEVELOPER INFO ]彡★\033[0m"
echo -e "\033[1;32mName:        MD SOFIKUL ISLAM\033[0m"
echo -e "\033[1;32mGitHub:      \033[1;34mMR-D4RK-OFFICIAL\033[0m"
echo -e "\033[1;32mTeam:    \033[1;34mCIVILIAN CYBER EXPERT FORCE\033[0m"
echo -e "\033[1;36m─────────────────────────────────────────────────────\033[0m"



\033[31m─────────────────────────────────────────────────────\033[0m"


# Login Verification
echo -e "\033[1;35mSTATUS: \033[1;33mAuthentication Required to Access Termux.\033[0m"
read -p $'\033[1;32mEnter Username: \033[0m' input_username
read -s -p $'\033[1;32mEnter Password: \033[0m' input_password
echo

if [[ "$input_username" == "$correct_username" && "$input_password" == "$correct_password" ]]; then
    echo -e "\033[1;32mAccess Granted! Welcome to Termux.\033[0m"
else
    echo -e "\033[1;31mAccess Denied! Wrong Username or Password.\033[0m"
    exit 1
fi
EOF
fi

# Make Banner Script Executable
chmod +x $BANNER_FILE

# Add Banner Script to .bashrc (if not already added)
if ! grep -q "$BANNER_FILE" "$BASHRC_FILE"; then
    echo "bash $BANNER_FILE" >> "$BASHRC_FILE"
fi

# Check if user has already set username
config_file="$HOME/.termux_config"

if [[ -f $config_file ]]; then
    source $config_file
    username_set=true
else
    username_set=false
fi

# Display developer info only if username is not set
if [[ $username_set == false ]]; then
    # Developer Information Section (Only shown the first time)
    echo -e "\033[1;36m─────────────────────────────────────────────────────\033[0m"
    echo -e "\033[1;33m★彡[ DEVELOPER INFO ]彡★\033[0m"
    echo -e "\033[1;32mName:        MD SOFIKUL ISLAM\033[0m"
    echo -e "\033[1;32mGitHub:      \033[1;34mgithub.com/MR-D4RK-OFFICIAL\033[0m"
    echo -e "\033[1;32mTeam:    \033[1;34mCIVILIAN CYBER EXPERT FORCE\033[0m"
    echo -e "\033[1;36m─────────────────────────────────────────────────────\033[0m"

    # Prompt for setting username
    echo -e "\033[1;33mPlease set up your username for this tool:\033[0m"
    read -p $'\033[1;32mEnter your shell username: \033[0m' user_name
    echo "username_set=true" > $config_file
    echo "user_name=\"$user_name\"" >> $config_file
    echo -e "\033[1;32mUsername has been set successfully!\033[0m"
    sleep 2
    clear
else
    echo -e "\033[1;32mWelcome back, $user_name!\033[0m"
fi

# Authentication check
echo -e "\033[1;32mWelcome to the Redza Termux Custom Tool!\033[0m"
echo
read -p $'\e[1;33mEnter Username: \e[0m' input_username
read -s -p $'\e[1;33mEnter Password: \e[0m' input_password
echo

if [[ "$input_username" == "$correct_username" && "$input_password" == "$correct_password" ]]; then
    echo -e "\n\e[1;32mLogin Successful! Access Granted.\e[0m"
    sleep 2
    clear
else
    echo -e "\n\e[1;31mInvalid Username or Password! Access Denied.\e[0m"
    exit 1
fi

# Banner design starts here
clear

echo -e "\e[1;32m      
██████╗ ███████╗██████╗ ███████╗ █████╗ 
██╔══██╗██╔════╝██╔══██╗╚══███╔╝██╔══██╗
██████╔╝█████╗  ██║  ██║  ███╔╝ ███████║
██╔══██╗██╔══╝  ██║  ██║ ███╔╝  ██╔══██║
██║  ██║███████╗██████╔╝███████╗██║  ██║
╚═╝  ╚═╝╚══════╝╚═════╝ ╚══════╝╚═╝  ╚═╝
\033[31m─────────────────────────────────────────────────────\033[0m"

echo -e "\033[1;36m★彡─────────── [WELCOME TO TERMUX] ───────────彡★\033[0m"

# Displaying user and system information
echo -e "\033[1;33m
User:       \033[1;32m$user_name
System:     \033[1;32m$(uname -o)
Terminal:   \033[1;32m$(tty)
Date:       \033[1;32m$(date +"%A, %d %B %Y")
Time:       \033[1;32m$(date +"%I:%M %p")
\033[0m"

echo -e "\033[31m─────────────────────────────────────────────────────\033[0m"
echo -e "\033[1;35mSTATUS: \033[1;32mYour Termux is ready for use! Enjoy your experience...\033[0m"

# Stylish shell prompt
PS1='\033[1m\e[32m┌─[\e[37m\T\e[32m]───[\e[33m$user_name@\h\e[32m]───[\e[36m\w\e[32m]\n└──> \033[1;37m'

# Notify User
echo -e "\033[1;32mREDZA Banner has been successfully set up!\033[0m"
echo -e "\033[1;36mRestart Termux to see the changes.\033[0m"
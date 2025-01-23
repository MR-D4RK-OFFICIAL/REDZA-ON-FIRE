#!/usr/bin/bash

# Banner Script Path
BANNER_FILE="$HOME/.REDZA-ON-FIRE"

# Profile File Path
BASHRC_FILE="$HOME/.bashrc"

# Create Banner Script if Not Exists
if [[ ! -f $BANNER_FILE ]]; then
    cat << 'EOF' > $BANNER_FILE
#!/usr/bin/bash
clear

# Banner Design
echo -e "\e[1;32m
██████╗ ███████╗██████╗ ███████╗ █████╗ 
██╔══██╗██╔════╝██╔══██╗╚══███╔╝██╔══██╗
██████╔╝█████╗  ██║  ██║  ███╔╝ ███████║
██╔══██╗██╔══╝  ██║  ██║ ███╔╝  ██╔══██║
██║  ██║███████╗██████╔╝███████╗██║  ██║
╚═╝  ╚═╝╚══════╝╚═════╝ ╚══════╝╚═╝  ╚═╝


\033[31m─────────────────────────────────────────────────────\033[0m"

# Displaying User and System Information
echo -e "\033[1;33m
System:     \033[1;32m$(uname -o)
Terminal:   \033[1;32m$(tty)
Date:       \033[1;32m$(date +"%A, %d %B %Y")
Time:       \033[1;32m$(date +"%I:%M %p")
\033[0m"

echo -e "\033[31m─────────────────────────────────────────────────────\033[0m"
echo -e "\033[1;35mSTATUS: \033[1;32mYour Termux is ready for use! Enjoy your experience...\033[0m"
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

# Display developer info only if first-time setup
if [[ $username_set == false ]]; then
    # Developer Information Section (First time only)
    echo -e "\033[1;36m─────────────────────────────────────────────────────\033[0m"
    echo -e "\033[1;33m★彡[ DEVELOPER INFO ]彡★\033[0m"
    echo -e "\033[1;32mName:        MD SOFIKUL ISLAM\033[0m"
    echo -e "\033[1;32mGitHub:      \033[1;34mgithub.com/MR-D4RK-OFFICIAL\033[0m"
    echo -e "\033[1;32mTeam:        \033[1;34mCIVILIAN CYBER EXPERT FORCE\033[0m"
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

# Notify User
echo -e "\033[1;32mREDZA Banner has been successfully set up!\033[0m"
echo -e "\033[1;36mRestart Termux to see the changes.\033[0m"

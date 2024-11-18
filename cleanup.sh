#!/bin/bash

# Define the target paths
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

# Restore write permissions
echo "Restoring write permissions..."
chmod +w "$HOME_DIR/$HOME_FILE"
chmod +w "$DOWNLOAD_DIR/$DOWNLOAD_FILE"
chmod +w "$MUSIC_DIR/$MUSIC_FILE"
chmod +w "$APPLICATIONS_DIR/$APPLICATIONS_FILE"
chmod +w "$PICTURES_DIR/$PICTURES_FILE"
chmod +w "$DOCUMENTS_DIR/$DOCUMENTS_FILE"
chmod +w "$MOVIES_DIR/$MOVIES_FILE"

chmod +w "$HOME/.zshrc"
chmod +w "$HOME/.bashrc"

# Delete the downloaded and copied files
echo "Deleting the downloaded and copied files..."
rm -f "$HOME_DIR/$HOME_FILE"
rm -f "$DOWNLOAD_DIR/$DOWNLOAD_FILE"
rm -f "$MUSIC_DIR/$MUSIC_FILE"
rm -f "$APPLICATIONS_DIR/$APPLICATIONS_FILE"
rm -f "$PICTURES_DIR/$PICTURES_FILE"
rm -f "$DOCUMENTS_DIR/$DOCUMENTS_FILE"
rm -f "$MOVIES_DIR/$MOVIES_FILE"
rm -f "$DOWNLOAD_DIR/download.zip"

# Kill all processes containing "goose"
echo "Killing all processes containing 'goose'..."
pkill -f Goose

echo "Script complete! All files have been deleted and permissions restored."

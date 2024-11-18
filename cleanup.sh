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
chmod -R +w "$HOME_DIR/$HOME_FILE"
chmod -R +w "$DOWNLOAD_DIR/$DOWNLOAD_FILE"
chmod -R +w "$MUSIC_DIR/$MUSIC_FILE"
chmod -R +w "$APPLICATIONS_DIR/$APPLICATIONS_FILE"
chmod -R +w "$PICTURES_DIR/$PICTURES_FILE"
chmod -R +w "$DOCUMENTS_DIR/$DOCUMENTS_FILE"
chmod -R +w "$MOVIES_DIR/$MOVIES_FILE"

chmod +w "$HOME/.zshrc"
chmod +w "$HOME/.bashrc"

# Delete the downloaded and copied files
echo "Deleting the downloaded and copied files..."
rm -rf "$HOME_DIR/$HOME_FILE"
rm -rf "$DOWNLOAD_DIR/$DOWNLOAD_FILE"
rm -rf "$MUSIC_DIR/$MUSIC_FILE"
rm -rf "$APPLICATIONS_DIR/$APPLICATIONS_FILE"
rm -rf "$PICTURES_DIR/$PICTURES_FILE"
rm -rf "$DOCUMENTS_DIR/$DOCUMENTS_FILE"
rm -rf "$MOVIES_DIR/$MOVIES_FILE"
rm -rf "$DOWNLOAD_DIR/download.zip"

# Kill all processes containing "goose"
echo "Killing all processes containing 'goose'..."
pkill -f Goose

echo "Script complete! All files have been deleted and permissions restored."

#!/bin/sh

SCRIPT_DIR=$(cd $(dirname $0) && pwd)
VSCODE_SETTING_DIR=~/Library/Application\ Support/Code/User

rm "$VSCODE_SETTING_DIR/settings.json"
n -s "$SCRIPT_DIR/.vscode/settings.json" "${VSCODE_SETTING_DIR}/settings.json"

rm "$VSCODE_SETTING_DIR/keybindings.json"
ln -s "$SCRIPT_DIR/.vscode/keybindings.json" "${VSCODE_SETTING_DIR}/keybindings.json"
